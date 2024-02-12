// ignore_for_file: must_be_immutable

part of 'loginsuccess_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Loginsuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginsuccessEvent extends Equatable {}

/// Event that is dispatched when the Loginsuccess widget is first created.
class LoginsuccessInitialEvent extends LoginsuccessEvent {
  @override
  List<Object?> get props => [];
}
