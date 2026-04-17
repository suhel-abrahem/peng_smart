part of 'heater_schedule_bloc.dart';

@freezed
abstract class HeaterScheduleState with _$HeaterScheduleState {
  const factory HeaterScheduleState.initial() = HeaterScheduleInitial;

  const factory HeaterScheduleState.loaded({
    required List<HeaterSessionEntity> sessions,
  }) = HeaterScheduleLoaded;

  const factory HeaterScheduleState.saving({
    required List<HeaterSessionEntity> sessions,
  }) = HeaterScheduleSaving;

  const factory HeaterScheduleState.saved({
    required List<HeaterSessionEntity> sessions,
    required DeviceEntity device,
  }) = HeaterScheduleSaved;

  const factory HeaterScheduleState.error({
    required List<HeaterSessionEntity> sessions,
    required String message,
  }) = HeaterScheduleError;
  const factory HeaterScheduleState.loadingRules() = HeaterScheduleLoadingRules;
}
