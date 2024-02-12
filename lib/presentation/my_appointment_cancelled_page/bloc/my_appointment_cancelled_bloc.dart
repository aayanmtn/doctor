import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/appointmentcard_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_cancelled_page/models/my_appointment_cancelled_model.dart';
part 'my_appointment_cancelled_event.dart';
part 'my_appointment_cancelled_state.dart';

/// A bloc that manages the state of a MyAppointmentCancelled according to the event that is dispatched to it.
class MyAppointmentCancelledBloc
    extends Bloc<MyAppointmentCancelledEvent, MyAppointmentCancelledState> {
  MyAppointmentCancelledBloc(MyAppointmentCancelledState initialState)
      : super(initialState) {
    on<MyAppointmentCancelledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyAppointmentCancelledInitialEvent event,
    Emitter<MyAppointmentCancelledState> emit,
  ) async {
    emit(state.copyWith(
        myAppointmentCancelledModelObj:
            state.myAppointmentCancelledModelObj?.copyWith(
      appointmentcardItemList: fillAppointmentcardItemList(),
    )));
  }

  List<AppointmentcardItemModel> fillAppointmentcardItemList() {
    return [
      AppointmentcardItemModel(
          appointmentStatus: "Appointment cancelled",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgImage75x75,
          patientName: "Patient Ali",
          patientType: "Gyno patient"),
      AppointmentcardItemModel(
          appointmentStatus: "Appointment cancelled",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgImage74x74,
          patientName: "Patient Ali",
          patientType: "Hearts patient"),
      AppointmentcardItemModel(
          appointmentStatus: "Appointment cancelled",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgRectangle2495,
          patientName: "Patient Ali",
          patientType: "Legs Patient")
    ];
  }
}
