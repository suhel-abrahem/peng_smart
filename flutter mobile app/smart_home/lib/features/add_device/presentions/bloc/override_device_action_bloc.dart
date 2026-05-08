import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../domain/entities/action_link_entity.dart';
import '../../domain/usecase/override_device_action_usecase.dart';

part 'override_device_action_event.dart';
part 'override_device_action_state.dart';
part 'override_device_action_bloc.freezed.dart';

class OverrideDeviceActionBloc
    extends Bloc<OverrideDeviceActionEvent, OverrideDeviceActionState> {
  final OverrideDeviceActionUsecase _overrideDeviceActionUsecase;
  OverrideDeviceActionBloc(this._overrideDeviceActionUsecase)
    : super(_Initial()) {
    on<_Started>((event, emit) {
      emit(const OverrideDeviceActionState.initial());
    });
    on<_Override>((event, emit) async {
      emit(const OverrideDeviceActionState.overriding());
      final result = await _overrideDeviceActionUsecase.call(
        params: OverrideDeviceActionDataType(
          deviceId: event.deviceId,
          actions: event.actions,
        ),
      );
      if (result is DataSuccess) {
        emit(const OverrideDeviceActionState.overridden());
      } else {
        emit(
          OverrideDeviceActionState.error(
            message:
                result.error?.toString() ?? 'Failed to override device actions',
          ),
        );
      }
    });
  }
}
