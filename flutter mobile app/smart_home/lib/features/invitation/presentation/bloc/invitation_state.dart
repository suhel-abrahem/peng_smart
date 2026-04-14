part of 'invitation_bloc.dart';

abstract class InvitationState extends Equatable {
  const InvitationState();  

  @override
  List<Object> get props => [];
}
class InvitationInitial extends InvitationState {}
