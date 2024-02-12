import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/finish_order_screen/models/finish_order_model.dart';
part 'finish_order_event.dart';
part 'finish_order_state.dart';

/// A bloc that manages the state of a FinishOrder according to the event that is dispatched to it.
class FinishOrderBloc extends Bloc<FinishOrderEvent, FinishOrderState> {
  FinishOrderBloc(FinishOrderState initialState) : super(initialState) {
    on<FinishOrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FinishOrderInitialEvent event,
    Emitter<FinishOrderState> emit,
  ) async {}
}
