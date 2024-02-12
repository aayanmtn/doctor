// ignore_for_file: must_be_immutable

part of 'reset_password_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordPageEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordPage widget is first created.
class ResetPasswordPageInitialEvent extends ResetPasswordPageEvent {
  @override
  List<Object?> get props => [];
}
