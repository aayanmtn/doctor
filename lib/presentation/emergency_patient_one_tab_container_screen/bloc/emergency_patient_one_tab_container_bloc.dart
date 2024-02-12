import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/emergency_patient_one_tab_container_screen/models/emergency_patient_one_tab_container_model.dart';part 'emergency_patient_one_tab_container_event.dart';part 'emergency_patient_one_tab_container_state.dart';/// A bloc that manages the state of a EmergencyPatientOneTabContainer according to the event that is dispatched to it.
class EmergencyPatientOneTabContainerBloc extends Bloc<EmergencyPatientOneTabContainerEvent, EmergencyPatientOneTabContainerState> {EmergencyPatientOneTabContainerBloc(EmergencyPatientOneTabContainerState initialState) : super(initialState) { on<EmergencyPatientOneTabContainerInitialEvent>(_onInitialize); }

_onInitialize(EmergencyPatientOneTabContainerInitialEvent event, Emitter<EmergencyPatientOneTabContainerState> emit, ) async  {  } 
 }
