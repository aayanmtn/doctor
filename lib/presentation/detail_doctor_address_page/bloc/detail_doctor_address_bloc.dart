import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/detail_doctor_address_page/models/detail_doctor_address_model.dart';
part 'detail_doctor_address_event.dart';
part 'detail_doctor_address_state.dart';

/// A bloc that manages the state of a DetailDoctorAddress according to the event that is dispatched to it.
class DetailDoctorAddressBloc
    extends Bloc<DetailDoctorAddressEvent, DetailDoctorAddressState> {
  DetailDoctorAddressBloc(DetailDoctorAddressState initialState)
      : super(initialState) {
    on<DetailDoctorAddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailDoctorAddressInitialEvent event,
    Emitter<DetailDoctorAddressState> emit,
  ) async {}
}
