// ignore_for_file: must_be_immutable

part of 'forgot_password_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordPageEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordPage widget is first created.
class ForgotPasswordPageInitialEvent extends ForgotPasswordPageEvent {
  @override
  List<Object?> get props => [];
}
