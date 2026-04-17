part of 'heater_schedule_bloc.dart';

@freezed
abstract class HeaterScheduleEvent with _$HeaterScheduleEvent {
  const factory HeaterScheduleEvent.setSessions({
    required List<HeaterSessionEntity> sessions,
  }) = SetSessionsEvent;

  const factory HeaterScheduleEvent.saveSessions({
    required String deviceId,
    required List<HeaterSessionEntity> sessions,
  }) = SaveSessionsEvent;
  const factory HeaterScheduleEvent.loadDeviceRules({
    required String deviceId,
  }) = LoadDeviceRulesEvent;
}
