import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/detail_doctor_address_tab_container_screen/models/detail_doctor_address_tab_container_model.dart';part 'detail_doctor_address_tab_container_event.dart';part 'detail_doctor_address_tab_container_state.dart';/// A bloc that manages the state of a DetailDoctorAddressTabContainer according to the event that is dispatched to it.
class DetailDoctorAddressTabContainerBloc extends Bloc<DetailDoctorAddressTabContainerEvent, DetailDoctorAddressTabContainerState> {DetailDoctorAddressTabContainerBloc(DetailDoctorAddressTabContainerState initialState) : super(initialState) { on<DetailDoctorAddressTabContainerInitialEvent>(_onInitialize); }

_onInitialize(DetailDoctorAddressTabContainerInitialEvent event, Emitter<DetailDoctorAddressTabContainerState> emit, ) async  {  } 
 }
