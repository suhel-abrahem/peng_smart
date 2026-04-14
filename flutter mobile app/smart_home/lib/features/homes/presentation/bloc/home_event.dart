part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getMyHomes() = GetMyHomesEvent;
  const factory HomeEvent.createHome({required CreateHomeInputModel input}) =
      CreateHomeEvent;
  const factory HomeEvent.reset() = ResetHomeEvent;
}
