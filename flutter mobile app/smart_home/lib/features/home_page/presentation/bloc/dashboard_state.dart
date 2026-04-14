part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = DashboardInitial;
  const factory DashboardState.loading() = DashboardLoading;
  const factory DashboardState.loaded({
    required List<HomeEntity> homes,
    required HomeEntity selectedHome,
    required List<RoomEntity> rooms,
    required List<DeviceEntity> devices,
  }) = DashboardLoaded;
  const factory DashboardState.error({required String message}) =
      DashboardError;
}
