import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../add_device/domain/entities/device_entity.dart';
import '../../../add_device/domain/usecase/get_devices_by_home_id_usecase.dart';
import '../../../homes/domain/entities/home_entity.dart';
import '../../../homes/domain/usecases/get_my_homes_usecase.dart';
import '../../../room/domain/entities/room_entity.dart';
import '../../../room/domain/usecases/get_rooms_by_home_id_usecase.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetMyHomesUseCase _getMyHomesUseCase;
  final GetRoomsByHomeIdUseCase _getRoomsByHomeIdUseCase;
  final GetDevicesByHomeIdUseCase _getDevicesByHomeIdUseCase;

  DashboardBloc(
    this._getMyHomesUseCase,
    this._getRoomsByHomeIdUseCase,
    this._getDevicesByHomeIdUseCase,
  ) : super(const DashboardState.initial()) {
    on<LoadDashboardEvent>(_onLoad);
    on<SelectHomeEvent>(_onSelectHome);
  }

  Future<void> _onLoad(
    LoadDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(const DashboardState.loading());

    final homesResult = await _getMyHomesUseCase.call(params: NoParams());

    if (homesResult is! DataSuccess<List<HomeEntity>>) {
      emit(
        DashboardState.error(
          message: homesResult.error?.toString() ?? 'Failed to load homes',
        ),
      );
      return;
    }

    final homes = homesResult.data ?? [];

    if (homes.isEmpty) {
      emit(const DashboardState.error(message: 'No homes found'));
      return;
    }

    await _loadHomeData(
      emit: emit,
      homes: homes,
      selectedHome: homes.first,
    );
  }

  Future<void> _onSelectHome(
    SelectHomeEvent event,
    Emitter<DashboardState> emit,
  ) async {
    final currentState = state;
    if (currentState is! DashboardLoaded) return;

    emit(const DashboardState.loading());

    await _loadHomeData(
      emit: emit,
      homes: currentState.homes,
      selectedHome: event.home,
    );
  }

  Future<void> _loadHomeData({
    required Emitter<DashboardState> emit,
    required List<HomeEntity> homes,
    required HomeEntity selectedHome,
  }) async {
    final roomsResult = await _getRoomsByHomeIdUseCase.call(
      params: selectedHome.id,
    );

    final devicesResult = await _getDevicesByHomeIdUseCase.call(
      params: selectedHome.id,
    );

    if (roomsResult is! DataSuccess<List<RoomEntity>>) {
      emit(
        DashboardState.error(
          message: roomsResult.error?.toString() ?? 'Failed to load rooms',
        ),
      );
      return;
    }

    if (devicesResult is! DataSuccess<List<DeviceEntity>>) {
      emit(
        DashboardState.error(
          message: devicesResult.error?.toString() ?? 'Failed to load devices',
        ),
      );
      return;
    }

    emit(
      DashboardState.loaded(
        homes: homes,
        selectedHome: selectedHome,
        rooms: roomsResult.data ?? [],
        devices: devicesResult.data ?? [],
      ),
    );
  }
}
