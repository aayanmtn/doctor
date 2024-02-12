import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/sign_up_page_screen/models/sign_up_page_model.dart';
part 'sign_up_page_event.dart';
part 'sign_up_page_state.dart';

/// A bloc that manages the state of a SignUpPage according to the event that is dispatched to it.
class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  SignUpPageBloc(SignUpPageState initialState) : super(initialState) {
    on<SignUpPageInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignUpPageState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<SignUpPageState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    SignUpPageInitialEvent event,
    Emitter<SignUpPageState> emit,
  ) async {
    emit(state.copyWith(
      signUpFormController: TextEditingController(),
      emailFieldController: TextEditingController(),
      passwordFieldController: TextEditingController(),
      confirmPasswordFieldController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
