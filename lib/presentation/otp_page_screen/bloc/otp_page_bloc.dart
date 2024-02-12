import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/otp_page_screen/models/otp_page_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'otp_page_event.dart';
part 'otp_page_state.dart';

/// A bloc that manages the state of a OtpPage according to the event that is dispatched to it.
class OtpPageBloc extends Bloc<OtpPageEvent, OtpPageState> with CodeAutoFill {
  OtpPageBloc(OtpPageState initialState) : super(initialState) {
    on<OtpPageInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<OtpPageState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    OtpPageInitialEvent event,
    Emitter<OtpPageState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
