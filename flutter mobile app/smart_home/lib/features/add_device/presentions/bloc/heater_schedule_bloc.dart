import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../domain/entities/device_entity.dart';
import '../../domain/entities/rules_entity.dart';
import '../../domain/entities/water_heater/heater_session_entity.dart';
import '../../domain/entities/water_heater/heater_session_to_rules_mapper.dart';
import '../../domain/entities/water_heater/rules_to_heater_sessions_mapper.dart';
import '../../domain/usecase/get_device_by_id_usecase.dart';
import '../../domain/usecase/update_device_rules_usecase.dart';

part 'heater_schedule_event.dart';
part 'heater_schedule_state.dart';
part 'heater_schedule_bloc.freezed.dart';

class HeaterScheduleBloc
    extends Bloc<HeaterScheduleEvent, HeaterScheduleState> {
  final UpdateDeviceRulesUseCase _updateDeviceRulesUseCase;
  final GetDeviceByIdUseCase _getDeviceByIdUseCase;
  HeaterScheduleBloc(this._updateDeviceRulesUseCase, this._getDeviceByIdUseCase)
    : super(const HeaterScheduleState.initial()) {
    on<SetSessionsEvent>(_onSetSessions);
    on<SaveSessionsEvent>(_onSaveSessions);
    on<LoadDeviceRulesEvent>(_onLoadDeviceRules);
  }

  Future<void> _onSetSessions(
    SetSessionsEvent event,
    Emitter<HeaterScheduleState> emit,
  ) async {
    emit(HeaterScheduleState.loaded(sessions: event.sessions));
  }

  Future<void> _onSaveSessions(
    SaveSessionsEvent event,
    Emitter<HeaterScheduleState> emit,
  ) async {
    emit(HeaterScheduleState.saving(sessions: event.sessions));

    final RulesEntity rules = HeaterSessionToRulesMapper.map(event.sessions);

    final result = await _updateDeviceRulesUseCase.call(
      params: UpdateDeviceRulesParams(deviceId: event.deviceId, rules: rules),
    );

    if (result is DataSuccess<DeviceEntity>) {
      emit(
        HeaterScheduleState.saved(
          sessions: event.sessions,
          device: result.data!,
        ),
      );
    } else {
      emit(
        HeaterScheduleState.error(
          sessions: event.sessions,
          message: result.error?.toString() ?? 'Failed to save heater schedule',
        ),
      );
    }
  }

  Future<void> _onLoadDeviceRules(
    LoadDeviceRulesEvent event,
    Emitter<HeaterScheduleState> emit,
  ) async {
    emit(const HeaterScheduleState.loadingRules());

    final result = await _getDeviceByIdUseCase.call(params: event.deviceId);

    if (result is DataSuccess<DeviceEntity>) {
      final device = result.data!;
      final sessions = RulesToHeaterSessionsMapper.map(device.rules);

      emit(HeaterScheduleState.loaded(sessions: sessions));
    } else {
      emit(
        HeaterScheduleState.error(
          sessions: const [],
          message: result.error?.toString() ?? 'Failed to load device rules',
        ),
      );
    }
  }
}
