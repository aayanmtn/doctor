import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/detail_doctor_about_me_tab_container_screen/models/detail_doctor_about_me_tab_container_model.dart';part 'detail_doctor_about_me_tab_container_event.dart';part 'detail_doctor_about_me_tab_container_state.dart';/// A bloc that manages the state of a DetailDoctorAboutMeTabContainer according to the event that is dispatched to it.
class DetailDoctorAboutMeTabContainerBloc extends Bloc<DetailDoctorAboutMeTabContainerEvent, DetailDoctorAboutMeTabContainerState> {DetailDoctorAboutMeTabContainerBloc(DetailDoctorAboutMeTabContainerState initialState) : super(initialState) { on<DetailDoctorAboutMeTabContainerInitialEvent>(_onInitialize); }

_onInitialize(DetailDoctorAboutMeTabContainerInitialEvent event, Emitter<DetailDoctorAboutMeTabContainerState> emit, ) async  {  } 
 }
