part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.load() = LoadDashboardEvent;
  const factory DashboardEvent.selectHome({required HomeEntity home}) =
      SelectHomeEvent;
  const factory DashboardEvent.selectRoom({
    required String? roomId, // null = ALL
  }) = SelectRoomEvent;
}
