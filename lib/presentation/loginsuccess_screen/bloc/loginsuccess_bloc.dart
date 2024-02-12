import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/loginsuccess_screen/models/loginsuccess_model.dart';
part 'loginsuccess_event.dart';
part 'loginsuccess_state.dart';

/// A bloc that manages the state of a Loginsuccess according to the event that is dispatched to it.
class LoginsuccessBloc extends Bloc<LoginsuccessEvent, LoginsuccessState> {
  LoginsuccessBloc(LoginsuccessState initialState) : super(initialState) {
    on<LoginsuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginsuccessInitialEvent event,
    Emitter<LoginsuccessState> emit,
  ) async {}
}
