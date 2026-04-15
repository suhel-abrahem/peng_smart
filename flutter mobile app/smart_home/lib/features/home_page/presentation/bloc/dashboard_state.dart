part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = DashboardInitial;
  const factory DashboardState.loading() = DashboardLoading;
  const factory DashboardState.loaded({
    required DataState<List<HomeEntity>> homes,
    required HomeEntity selectedHome,
    required DataState<List<RoomEntity>> rooms,
    required DataState<List<DeviceEntity>> devices,
    required String? selectedRoomId,
  }) = DashboardLoaded;
  const factory DashboardState.error({required String message}) =
      DashboardError;
}
