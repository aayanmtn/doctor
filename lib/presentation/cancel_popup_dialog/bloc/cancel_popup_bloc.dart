import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/cancel_popup_dialog/models/cancel_popup_model.dart';part 'cancel_popup_event.dart';part 'cancel_popup_state.dart';/// A bloc that manages the state of a CancelPopup according to the event that is dispatched to it.
class CancelPopupBloc extends Bloc<CancelPopupEvent, CancelPopupState> {CancelPopupBloc(CancelPopupState initialState) : super(initialState) { on<CancelPopupInitialEvent>(_onInitialize); }

_onInitialize(CancelPopupInitialEvent event, Emitter<CancelPopupState> emit, ) async  {  } 
 }
