import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:peng_smart/features/home_page/domain/usecases/get_rooms_usecase.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/entities/room_entity.dart';
import '../../domain/usecases/add_room_usecase.dart';

part 'rooms_event.dart';
part 'rooms_state.dart';
part 'rooms_bloc.freezed.dart';

class RoomsBloc extends Bloc<RoomsEvent, RoomsState> {
  late final GetRoomsUsecase _getRoomsUsecase;
  late final AddRoomUsecase _addRoomUsecase;

  RoomsBloc(this._addRoomUsecase, this._getRoomsUsecase) : super(_Initial()) {
    on<RoomsEvent>((event, emit) {
      event.map(
        started: (e) => emit(_Initial()),
        addRoom: (e) async {
          emit(_Loading());

          final roomsState = await _addRoomUsecase.call(params: e.roomEntity);
          if (roomsState is DataSuccess) {
            emit(_Updated(
                rooms: roomsState.data, message: 'Room added successfully'));
          } else {
            emit(_Error(message: roomsState?.message ?? ''));
          }
        },
        deleteRoom: (e) {},
        updateRoom: (e) {},
        getRooms: (e) async {
          emit(_Loading());
          final roomsState = await _getRoomsUsecase.call(params: e.id);
          List<RoomEntity?>? rooms = [];

          rooms = roomsState?.data ?? [];
          rooms?.add(
            RoomEntity(
                id: "${(rooms.length) + 1}",
                name: "Add",
                icon: Icons.add_home_rounded),
          );
          emit(_Loaded(rooms: rooms));

          if (roomsState is DataFailed) {
            emit(_Error(message: roomsState?.message ?? ''));
          }
        },
      );
    });
  }
}
