import 'package:smart_home/core/enums/action_enum.dart';
import 'package:smart_home/core/enums/next_rule_condition_enum.dart';
import 'package:smart_home/core/enums/rule_condition_enum.dart';
import 'package:smart_home/features/add_device/domain/entities/action_link_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rule_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rule_group_entity.dart';
import 'package:smart_home/features/add_device/domain/entities/rules_entity.dart';

import '../../../../../core/util/helper/water_heater/heater_schedule_helper.dart';
import 'heater_session_entity.dart';

class HeaterSessionToRulesMapper {
  static RulesEntity map(List<HeaterSessionEntity> sessions) {
    final List<RuleGroupEntity> groups = [];

    for (final session in sessions) {
      if (!session.enabled) continue;
      if (session.startTime.isEmpty || session.endTime.isEmpty) continue;

      final startMinutes = HeaterScheduleHelper.timeToMinutes(
        session.startTime,
      );
      final endMinutes = HeaterScheduleHelper.timeToMinutes(session.endTime);

      final relay1End = startMinutes + session.relay1Minutes;
      final relay2Start = relay1End;
      final relay2End = relay2Start + session.relay2Minutes;

      // optional validation: session window should fit durations
      final totalDuration = session.relay1Minutes + session.relay2Minutes;
      final sessionDuration = endMinutes - startMinutes;

      if (sessionDuration <= 0) {
        continue;
      }

      if (totalDuration > sessionDuration) {
        continue;
      }

      // Group 1 => relay1 ON
      groups.add(
        RuleGroupEntity(
          id: session.id,
          name: 'Session ${session.startTime}-${session.endTime} Relay1',
          enabled: true,
          rules: [
            RuleEntity(
              id: '${session.id}_relay1_time',
              name:
                  'Time between ${session.startTime} and ${HeaterScheduleHelper.minutesToTime(relay1End)}',
              enabled: true,
              conditionForNextRule: null,
              activeFrom: session.startTime,
              activeTo: HeaterScheduleHelper.minutesToTime(relay1End),
              days: session.days,
              value: '',
            ).toJson(),
          ],
          actions: [
            ActionLinkEntity(
              id: '${session.id}_relay1_on',
              name: 'Relay1 ON',
              targetComponentId: 'relay1',
              action: ActionEnum.turnOn,
            ).toJson(),
            ActionLinkEntity(
              id: '${session.id}_relay2_off',
              name: 'Relay2 OFF',
              targetComponentId: 'relay2',
              action: ActionEnum.turnOff,
            ).toJson(),
          ],
        ),
      );

      // Group 2 => relay2 ON
      groups.add(
        RuleGroupEntity(

          id: '${session.id}_relay2',
          name: 'Session ${session.startTime}-${session.endTime} Relay2',
          enabled: true,
          rules: [
            RuleEntity(
              id: '${session.id}_relay2_time',
              name:
                  'Time between ${HeaterScheduleHelper.minutesToTime(relay2Start)} and ${HeaterScheduleHelper.minutesToTime(relay2End)}',
              enabled: true,
              conditionForNextRule: null,
              activeFrom: HeaterScheduleHelper.minutesToTime(relay2Start),
              activeTo: HeaterScheduleHelper.minutesToTime(relay2End),
              days: session.days,
              value: '',
            ).toJson(),
          ],
          actions: [
            ActionLinkEntity(
              id: '${session.id}_relay1_off',
              name: 'Relay1 OFF',
              targetComponentId: 'relay1',
              action: ActionEnum.turnOff,
            ).toJson(),
            ActionLinkEntity(
              id: '${session.id}_relay2_on',
              name: 'Relay2 ON',
              targetComponentId: 'relay2',
              action: ActionEnum.turnOn,
            ).toJson(),
          ],
        ),
      );
    }

    return RulesEntity(groups: groups);
  }
}
