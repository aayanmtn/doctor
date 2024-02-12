import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/doctorcard_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_upcoming_one_page/models/my_appointment_upcoming_one_model.dart';
part 'my_appointment_upcoming_one_event.dart';
part 'my_appointment_upcoming_one_state.dart';

/// A bloc that manages the state of a MyAppointmentUpcomingOne according to the event that is dispatched to it.
class MyAppointmentUpcomingOneBloc
    extends Bloc<MyAppointmentUpcomingOneEvent, MyAppointmentUpcomingOneState> {
  MyAppointmentUpcomingOneBloc(MyAppointmentUpcomingOneState initialState)
      : super(initialState) {
    on<MyAppointmentUpcomingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyAppointmentUpcomingOneInitialEvent event,
    Emitter<MyAppointmentUpcomingOneState> emit,
  ) async {
    emit(state.copyWith(
        myAppointmentUpcomingOneModelObj:
            state.myAppointmentUpcomingOneModelObj?.copyWith(
      doctorcardItemList: fillDoctorcardItemList(),
    )));
  }

  List<DoctorcardItemModel> fillDoctorcardItemList() {
    return [
      DoctorcardItemModel(
          patientImage: ImageConstant.imgImage73x73,
          patientName: "Patient Ali",
          patientIssue: "Gyno Issue",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM"),
      DoctorcardItemModel(
          patientImage: ImageConstant.imgImage74x74,
          patientName: "Patient Ali",
          patientIssue: "Legs Issue",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM"),
      DoctorcardItemModel(
          patientImage: ImageConstant.imgRectangle2495,
          patientName: "Patient Ali",
          patientIssue: "Throat Issue",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM")
    ];
  }
}
