import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/forgot_password_page_screen/models/forgot_password_page_model.dart';part 'forgot_password_page_event.dart';part 'forgot_password_page_state.dart';/// A bloc that manages the state of a ForgotPasswordPage according to the event that is dispatched to it.
class ForgotPasswordPageBloc extends Bloc<ForgotPasswordPageEvent, ForgotPasswordPageState> {ForgotPasswordPageBloc(ForgotPasswordPageState initialState) : super(initialState) { on<ForgotPasswordPageInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordPageInitialEvent event, Emitter<ForgotPasswordPageState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController())); } 
 }
