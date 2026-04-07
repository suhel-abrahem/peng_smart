import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_device_event.dart';
part 'add_device_state.dart';
part 'add_device_bloc.freezed.dart';

class AddDeviceBloc extends Bloc<AddDeviceEvent, AddDeviceState> {
  AddDeviceBloc() : super(_Initial()) {
    on<AddDeviceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
