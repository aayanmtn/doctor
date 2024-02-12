import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/emergency_patient_screen/models/emergency_patient_model.dart';part 'emergency_patient_event.dart';part 'emergency_patient_state.dart';/// A bloc that manages the state of a EmergencyPatient according to the event that is dispatched to it.
class EmergencyPatientBloc extends Bloc<EmergencyPatientEvent, EmergencyPatientState> {EmergencyPatientBloc(EmergencyPatientState initialState) : super(initialState) { on<EmergencyPatientInitialEvent>(_onInitialize); }

_onInitialize(EmergencyPatientInitialEvent event, Emitter<EmergencyPatientState> emit, ) async  {  } 
 }
