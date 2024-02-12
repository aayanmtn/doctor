import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/doctorcard1_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_upcoming_page/models/my_appointment_upcoming_model.dart';
part 'my_appointment_upcoming_event.dart';
part 'my_appointment_upcoming_state.dart';

/// A bloc that manages the state of a MyAppointmentUpcoming according to the event that is dispatched to it.
class MyAppointmentUpcomingBloc
    extends Bloc<MyAppointmentUpcomingEvent, MyAppointmentUpcomingState> {
  MyAppointmentUpcomingBloc(MyAppointmentUpcomingState initialState)
      : super(initialState) {
    on<MyAppointmentUpcomingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyAppointmentUpcomingInitialEvent event,
    Emitter<MyAppointmentUpcomingState> emit,
  ) async {
    emit(state.copyWith(
        myAppointmentUpcomingModelObj:
            state.myAppointmentUpcomingModelObj?.copyWith(
      doctorcard1ItemList: fillDoctorcard1ItemList(),
    )));
  }

  List<Doctorcard1ItemModel> fillDoctorcard1ItemList() {
    return [
      Doctorcard1ItemModel(
          doctorImage: ImageConstant.imgImage73x73,
          doctorName: "Dr. Randy Wigham",
          doctorSpecialty: "General Medical Checkup",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM"),
      Doctorcard1ItemModel(
          doctorImage: ImageConstant.imgImage74x74,
          doctorName: "Dr. Jack Sulivan",
          doctorSpecialty: "General Medical Checkup",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM"),
      Doctorcard1ItemModel(
          doctorImage: ImageConstant.imgRectangle2495,
          doctorName: "Drg. Hanna Stanton",
          doctorSpecialty: "General Medical Checkup",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM")
    ];
  }
}
