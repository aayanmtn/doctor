import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/pop_up_dialog/models/pop_up_model.dart';
part 'pop_up_event.dart';
part 'pop_up_state.dart';

/// A bloc that manages the state of a PopUp according to the event that is dispatched to it.
class PopUpBloc extends Bloc<PopUpEvent, PopUpState> {
  PopUpBloc(PopUpState initialState) : super(initialState) {
    on<PopUpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopUpInitialEvent event,
    Emitter<PopUpState> emit,
  ) async {}
}
