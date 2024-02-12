import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/doctorcardlist_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_completed_page/models/my_appointment_completed_model.dart';
part 'my_appointment_completed_event.dart';
part 'my_appointment_completed_state.dart';

/// A bloc that manages the state of a MyAppointmentCompleted according to the event that is dispatched to it.
class MyAppointmentCompletedBloc
    extends Bloc<MyAppointmentCompletedEvent, MyAppointmentCompletedState> {
  MyAppointmentCompletedBloc(MyAppointmentCompletedState initialState)
      : super(initialState) {
    on<MyAppointmentCompletedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyAppointmentCompletedInitialEvent event,
    Emitter<MyAppointmentCompletedState> emit,
  ) async {
    emit(state.copyWith(
        myAppointmentCompletedModelObj:
            state.myAppointmentCompletedModelObj?.copyWith(
      doctorcardlistItemList: fillDoctorcardlistItemList(),
    )));
  }

  List<DoctorcardlistItemModel> fillDoctorcardlistItemList() {
    return [
      DoctorcardlistItemModel(
          appointmentApproved: "Appointment Approved",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgImage75x75,
          patientName: "Patient Ali",
          patientType: "Gyno patient"),
      DoctorcardlistItemModel(
          appointmentApproved: "Appointment Approved",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgImage74x74,
          patientName: "Patient Ali",
          patientType: "Hearts patient"),
      DoctorcardlistItemModel(
          appointmentApproved: "Appointment Approved",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgRectangle2495,
          patientName: "Patient Ali",
          patientType: "Legs Patient")
    ];
  }
}
