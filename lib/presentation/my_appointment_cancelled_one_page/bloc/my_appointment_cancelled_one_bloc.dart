import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/appointmentcardlist_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_cancelled_one_page/models/my_appointment_cancelled_one_model.dart';
part 'my_appointment_cancelled_one_event.dart';
part 'my_appointment_cancelled_one_state.dart';

/// A bloc that manages the state of a MyAppointmentCancelledOne according to the event that is dispatched to it.
class MyAppointmentCancelledOneBloc extends Bloc<MyAppointmentCancelledOneEvent,
    MyAppointmentCancelledOneState> {
  MyAppointmentCancelledOneBloc(MyAppointmentCancelledOneState initialState)
      : super(initialState) {
    on<MyAppointmentCancelledOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyAppointmentCancelledOneInitialEvent event,
    Emitter<MyAppointmentCancelledOneState> emit,
  ) async {
    emit(state.copyWith(
        myAppointmentCancelledOneModelObj:
            state.myAppointmentCancelledOneModelObj?.copyWith(
      appointmentcardlistItemList: fillAppointmentcardlistItemList(),
    )));
  }

  List<AppointmentcardlistItemModel> fillAppointmentcardlistItemList() {
    return [
      AppointmentcardlistItemModel(
          appointmentStatus: "Appointment cancelled",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgImage75x75,
          doctorName: "Dr. Randy Wigham",
          doctorSpecialty: "General Medical Checkup",
          ratingValue: "4.8",
          ratingCount: "(4,279 reviews)"),
      AppointmentcardlistItemModel(
          appointmentStatus: "Appointment cancelled",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgImage74x74,
          doctorName: "Dr. Jack Sulivan",
          doctorSpecialty: "General Medical Checkup",
          ratingValue: "4.8",
          ratingCount: "(4,279 reviews)"),
      AppointmentcardlistItemModel(
          appointmentStatus: "Appointment cancelled",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          image: ImageConstant.imgRectangle2495,
          doctorName: "Drg. Hanna Stanton",
          doctorSpecialty: "General Medical Checkup",
          ratingValue: "4.8",
          ratingCount: "(4,279 reviews)")
    ];
  }
}
