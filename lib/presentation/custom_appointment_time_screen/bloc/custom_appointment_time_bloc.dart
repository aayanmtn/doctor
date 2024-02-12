import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/custom_appointment_time_screen/models/custom_appointment_time_model.dart';
part 'custom_appointment_time_event.dart';
part 'custom_appointment_time_state.dart';

/// A bloc that manages the state of a CustomAppointmentTime according to the event that is dispatched to it.
class CustomAppointmentTimeBloc
    extends Bloc<CustomAppointmentTimeEvent, CustomAppointmentTimeState> {
  CustomAppointmentTimeBloc(CustomAppointmentTimeState initialState)
      : super(initialState) {
    on<CustomAppointmentTimeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CustomAppointmentTimeInitialEvent event,
    Emitter<CustomAppointmentTimeState> emit,
  ) async {}
}
