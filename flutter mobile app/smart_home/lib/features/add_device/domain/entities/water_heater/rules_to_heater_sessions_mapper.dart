import 'package:easy_localization/easy_localization.dart';
import 'package:smart_home/features/add_device/domain/entities/rule_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rule_group_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';

import 'heater_session_entity.dart';

class RulesToHeaterSessionsMapper {
  static List<HeaterSessionEntity> map(RulesEntity? rules) {
    if (rules?.groups == null) return [];

    final Map<String, HeaterSessionEntity> sessionsMap = {};

    for (final group in rules!.groups!) {
      final id = group.id.split('_').first;
      final RuleEntity rule = RuleEntity.fromJson(group.rules.first);
      final existing = sessionsMap[id];

      if (existing == null) {
        sessionsMap[id] = HeaterSessionEntity(
          id: id,
          startTime: rule.activeFrom ?? '',
          endTime: rule.activeTo ?? '',
          relay1Minutes: 0,
          relay2Minutes: 0,
          days: rule.days,
        );
      }

      // detect relay1 / relay2
      final isRelay1 = group.name.contains('Relay1');
      final isRelay2 = group.name.contains('Relay2');

      final from = rule.activeFrom ?? '';
      final to = rule.activeTo ?? '';

      final minutes = _calcMinutes(from, to);

      final session = sessionsMap[id]!;

      if (isRelay1) {
        sessionsMap[id] = session.copyWith(relay1Minutes: minutes);
      }

      if (isRelay2) {
        DateTime? endTime = DateTime.tryParse(
          rule.activeFrom ?? '',
        )?.add(Duration(minutes: minutes));
        sessionsMap[id] = session.copyWith(
          relay2Minutes: minutes,
          endTime: endTime != null
              ? DateFormat("HH:mm").format(endTime)
              : "--:--",
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
