import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/emergency_patient_two_tab_container_screen/models/emergency_patient_two_tab_container_model.dart';part 'emergency_patient_two_tab_container_event.dart';part 'emergency_patient_two_tab_container_state.dart';/// A bloc that manages the state of a EmergencyPatientTwoTabContainer according to the event that is dispatched to it.
class EmergencyPatientTwoTabContainerBloc extends Bloc<EmergencyPatientTwoTabContainerEvent, EmergencyPatientTwoTabContainerState> {EmergencyPatientTwoTabContainerBloc(EmergencyPatientTwoTabContainerState initialState) : super(initialState) { on<EmergencyPatientTwoTabContainerInitialEvent>(_onInitialize); }

_onInitialize(EmergencyPatientTwoTabContainerInitialEvent event, Emitter<EmergencyPatientTwoTabContainerState> emit, ) async  {  } 
 }
