import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/reset_password_page_screen/models/reset_password_page_model.dart';
part 'reset_password_page_event.dart';
part 'reset_password_page_state.dart';

/// A bloc that manages the state of a ResetPasswordPage according to the event that is dispatched to it.
class ResetPasswordPageBloc
    extends Bloc<ResetPasswordPageEvent, ResetPasswordPageState> {
  ResetPasswordPageBloc(ResetPasswordPageState initialState)
      : super(initialState) {
    on<ResetPasswordPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordPageInitialEvent event,
    Emitter<ResetPasswordPageState> emit,
  ) async {
    emit(state.copyWith(
      newpasswordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
    ));
  }
}
