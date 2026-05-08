import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/features/add_device/domain/usecase/get_devices_by_room_id_usecase.dart';

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
  final GetDevicesByRoomIdUseCase _getDevicesByRoomIdUseCase;

  DashboardBloc(
    this._getMyHomesUseCase,
    this._getRoomsByHomeIdUseCase,
    this._getDevicesByHomeIdUseCase,
    this._getDevicesByRoomIdUseCase,
  ) : super(const DashboardState.initial()) {
    on<LoadDashboardEvent>(_onLoad);
    on<SelectHomeEvent>(_onSelectHome);
    on<SelectRoomEvent>(_onSelectRoom);
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
      homes: DataSuccess(data: homes),
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
    required DataState<List<HomeEntity>> homes,
    required HomeEntity selectedHome,
  }) async {
    DataState<List<RoomEntity>> rooms = LoadingDataState();
    DataState<List<DeviceEntity>> devices = LoadingDataState();

    final roomsResult = await _getRoomsByHomeIdUseCase.call(
      params: selectedHome.id,
    );

    final devicesResult = await _getDevicesByHomeIdUseCase.call(
      params: selectedHome.id,
    );

    rooms = roomsResult is DataSuccess<List<RoomEntity>>
        ? DataSuccess(data: roomsResult.data ?? [])
        : DataFailed(
            error: roomsResult.error?.toString() ?? 'Failed to load rooms',
          );

    devices = devicesResult is DataSuccess<List<DeviceEntity>>
        ? DataSuccess(data: devicesResult.data ?? [])
        : DataFailed(
            error: devicesResult.error?.toString() ?? 'Failed to load devices',
          );

    emit(
      DashboardState.loaded(
        homes: homes,
        selectedHome: selectedHome,
        rooms: rooms,
        devices: devices,
        selectedRoomId: null, // 🔥 reset
      ),
    );
  }

  Future<void> _onSelectRoom(
    SelectRoomEvent event,
    Emitter<DashboardState> emit,
  ) async {
    final currentState = state;

    if (currentState is! DashboardLoaded) return;

    emit(const DashboardState.loading());

    DataState<List<DeviceEntity>> devices = LoadingDataState();

    if (event.roomId == null) {
      // 🔥 load all devices in home
      final result = await _getDevicesByHomeIdUseCase.call(
        params: currentState.selectedHome.id,
      );

      devices = result is DataSuccess
          ? DataSuccess(data: result.data ?? [])
          : DataFailed(
              error: result.error?.toString() ?? 'Failed to load devices',
            );
    } else {
      // 🔥 load devices by room
      final result = await _getDevicesByRoomIdUseCase.call(
        params: event.roomId,
      );

      devices = result is DataSuccess<List<DeviceEntity>>
          ? DataSuccess(data: result.data ?? [])
          : DataFailed(
              error: result.error?.toString() ?? 'Failed to load devices',
            );
    }

    emit(currentState.copyWith(devices: devices, selectedRoomId: event.roomId));
  }
}
