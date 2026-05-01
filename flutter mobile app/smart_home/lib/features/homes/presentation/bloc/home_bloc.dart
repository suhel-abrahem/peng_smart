import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/create_home_input_model.dart';
import '../../domain/entities/home_entity.dart';
import '../../domain/usecases/create_home_usecase.dart';
import '../../domain/usecases/get_my_homes_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetMyHomesUseCase _getMyHomesUseCase;
  final CreateHomeUseCase _createHomeUseCase;

  HomeBloc(this._getMyHomesUseCase, this._createHomeUseCase)
    : super(const HomeState.initial()) {
    on<GetMyHomesEvent>(_onGetMyHomes);
    on<CreateHomeEvent>(_onCreateHome);
    on<ResetHomeEvent>(_onReset);
  }

  Future<void> _onGetMyHomes(
    GetMyHomesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    final result = await _getMyHomesUseCase.call(params: NoParams());

    if (result is DataSuccess<List<HomeEntity>>) {
     
      emit(HomeState.homesLoaded(homes: result.data ?? []));
    } else {
      emit(
        HomeState.error(
          message: result.error?.toString() ?? 'Failed to get homes',
        ),
      );
    }
  }

  Future<void> _onCreateHome(
    CreateHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    final result = await _createHomeUseCase.call(params: event.input);

    if (result is DataSuccess<HomeEntity>) {
      emit(HomeState.homeCreated(home: result.data!));
    } else {
      emit(
        HomeState.error(
          message: result.error?.toString() ?? 'Failed to create home',
        ),
      );
    }
  }

  void _onReset(ResetHomeEvent event, Emitter<HomeState> emit) {
    emit(const HomeState.initial());
  }
}
