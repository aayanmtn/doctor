import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/my_appointment_completed_tab_container_screen/models/my_appointment_completed_tab_container_model.dart';part 'my_appointment_completed_tab_container_event.dart';part 'my_appointment_completed_tab_container_state.dart';/// A bloc that manages the state of a MyAppointmentCompletedTabContainer according to the event that is dispatched to it.
class MyAppointmentCompletedTabContainerBloc extends Bloc<MyAppointmentCompletedTabContainerEvent, MyAppointmentCompletedTabContainerState> {MyAppointmentCompletedTabContainerBloc(MyAppointmentCompletedTabContainerState initialState) : super(initialState) { on<MyAppointmentCompletedTabContainerInitialEvent>(_onInitialize); }

_onInitialize(MyAppointmentCompletedTabContainerInitialEvent event, Emitter<MyAppointmentCompletedTabContainerState> emit, ) async  {  } 
 }
