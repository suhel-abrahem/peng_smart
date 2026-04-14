part of 'room_bloc.dart';

abstract class RoomState extends Equatable {
  const RoomState();  

  @override
  List<Object> get props => [];
}
class RoomInitial extends RoomState {}
