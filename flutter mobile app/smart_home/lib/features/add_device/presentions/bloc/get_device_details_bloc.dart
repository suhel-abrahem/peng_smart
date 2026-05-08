import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../domain/entities/device_entity.dart';
import '../../domain/usecase/get_device_by_id_usecase.dart';

part 'get_device_details_event.dart';
part 'get_device_details_state.dart';
part 'get_device_details_bloc.freezed.dart';

class GetDeviceDetailsBloc
    extends Bloc<GetDeviceDetailsEvent, GetDeviceDetailsState> {
  final GetDeviceByIdUseCase _getDeviceByIdUseCase;
  GetDeviceDetailsBloc(this._getDeviceByIdUseCase) : super(_Initial()) {
    on<_Started>((event, emit) {
      emit(const GetDeviceDetailsState.initial());
    });
    on<_LoadDeviceDetails>((event, emit) async {
      emit(const GetDeviceDetailsState.loading());
      final result = await _getDeviceByIdUseCase.call(params: event.deviceId);
      if (result is DataSuccess) {
        emit(GetDeviceDetailsState.loaded(device: result.data!));
      } else {
        emit(
          GetDeviceDetailsState.error(
            message:
                result.error?.toString() ?? 'Failed to load device details',
          ),
        );
      }
    });
  }
}
