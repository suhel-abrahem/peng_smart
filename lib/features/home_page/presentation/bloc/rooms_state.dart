part of 'rooms_bloc.dart';

@freezed
class RoomsState with _$RoomsState {
  const factory RoomsState.initial() = _Initial;
  const factory RoomsState.loading() = _Loading;
  const factory RoomsState.loaded({required List<RoomEntity?>? rooms}) = _Loaded;
  const factory RoomsState.error({required String message}) = _Error;
  const factory RoomsState.updated({
    required List<RoomEntity?>? rooms,
    required String? message,
  }) = _Updated;
}
