import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/my_appointment_upcoming_tab_container_screen/models/my_appointment_upcoming_tab_container_model.dart';part 'my_appointment_upcoming_tab_container_event.dart';part 'my_appointment_upcoming_tab_container_state.dart';/// A bloc that manages the state of a MyAppointmentUpcomingTabContainer according to the event that is dispatched to it.
class MyAppointmentUpcomingTabContainerBloc extends Bloc<MyAppointmentUpcomingTabContainerEvent, MyAppointmentUpcomingTabContainerState> {MyAppointmentUpcomingTabContainerBloc(MyAppointmentUpcomingTabContainerState initialState) : super(initialState) { on<MyAppointmentUpcomingTabContainerInitialEvent>(_onInitialize); }

_onInitialize(MyAppointmentUpcomingTabContainerInitialEvent event, Emitter<MyAppointmentUpcomingTabContainerState> emit, ) async  {  } 
 }
