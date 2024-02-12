// ignore_for_file: must_be_immutable

part of 'otp_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpPageEvent extends Equatable {}

/// Event that is dispatched when the OtpPage widget is first created.
class OtpPageInitialEvent extends OtpPageEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpPageEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
