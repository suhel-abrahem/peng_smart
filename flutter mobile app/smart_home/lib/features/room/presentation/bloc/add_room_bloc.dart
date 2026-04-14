import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../data/models/create_room_input_model.dart';
import '../../domain/entities/room_entity.dart';
import '../../domain/usecases/create_room_usecase.dart';

part 'add_room_event.dart';
part 'add_room_state.dart';
part 'add_room_bloc.freezed.dart';

class AddRoomBloc extends Bloc<AddRoomEvent, AddRoomState> {
  final CreateRoomUseCase _createRoomUseCase;

  AddRoomBloc(this._createRoomUseCase)
      : super(const AddRoomState.initial()) {
    on<CreateRoomEvent>(_onCreateRoom);
    on<ResetAddRoomEvent>(_onReset);
  }

  Future<void> _onCreateRoom(
    CreateRoomEvent event,
    Emitter<AddRoomState> emit,
  ) async {
    emit(const AddRoomState.loading());

    final result = await _createRoomUseCase.call(params: event.input);

    if (result is DataSuccess<RoomEntity>) {
      emit(AddRoomState.success(room: result.data!));
    } else {
      emit(
        AddRoomState.error(
          message: result.error?.toString() ?? 'Failed to create room',
        ),
      );
    }
  }

  void _onReset(
    ResetAddRoomEvent event,
    Emitter<AddRoomState> emit,
  ) {
    emit(const AddRoomState.initial());
  }
}
