
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';

import 'heater_session_entity.dart';

class RulesToHeaterSessionsMapper {
  static List<HeaterSessionEntity> map(RulesEntity? rules) {
    if (rules?.groups == null) return [];

    final Map<String, HeaterSessionEntity> sessionsMap = {};

    for (final group in rules!.groups!) {
      final id = group.id.split('_').first;

      final existing = sessionsMap[id];

      if (existing == null) {
        sessionsMap[id] = HeaterSessionEntity(
          id: id,
          startTime: group.rules.first.activeFrom ?? '',
          endTime: group.rules.first.activeTo ?? '',
          relay1Minutes: 0,
          relay2Minutes: 0,
        );
      }

      // detect relay1 / relay2
      final isRelay1 = group.id.contains('relay1');
      final isRelay2 = group.id.contains('relay2');

      final from = group.rules.first.activeFrom ?? '';
      final to = group.rules.first.activeTo ?? '';

      final minutes = _calcMinutes(from, to);

      final session = sessionsMap[id]!;

      if (isRelay1) {
        sessionsMap[id] = session.copyWith(
          relay1Minutes: minutes,
        );
      }

      if (isRelay2) {
        sessionsMap[id] = session.copyWith(
          relay2Minutes: minutes,
        );
      }
    }

    return sessionsMap.values.toList();
  }

  static int _calcMinutes(String from, String to) {
    final f = _toMinutes(from);
    final t = _toMinutes(to);
    return t - f;
  }

  static int _toMinutes(String time) {
    final parts = time.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }
}