part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.homesLoaded({
    required List<HomeEntity> homes,
  }) = HomesLoadedState;
  const factory HomeState.homeCreated({
    required HomeEntity home,
  }) = HomeCreatedState;
  const factory HomeState.error({
    required String message,
  }) = HomeError;
}