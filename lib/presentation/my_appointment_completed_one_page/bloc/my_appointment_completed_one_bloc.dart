import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/doctorcardlist1_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_completed_one_page/models/my_appointment_completed_one_model.dart';
part 'my_appointment_completed_one_event.dart';
part 'my_appointment_completed_one_state.dart';

/// A bloc that manages the state of a MyAppointmentCompletedOne according to the event that is dispatched to it.
class MyAppointmentCompletedOneBloc extends Bloc<MyAppointmentCompletedOneEvent,
    MyAppointmentCompletedOneState> {
  MyAppointmentCompletedOneBloc(MyAppointmentCompletedOneState initialState)
      : super(initialState) {
    on<MyAppointmentCompletedOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyAppointmentCompletedOneInitialEvent event,
    Emitter<MyAppointmentCompletedOneState> emit,
  ) async {
    emit(state.copyWith(
        myAppointmentCompletedOneModelObj:
            state.myAppointmentCompletedOneModelObj?.copyWith(
      doctorcardlist1ItemList: fillDoctorcardlist1ItemList(),
    )));
  }

  List<Doctorcardlist1ItemModel> fillDoctorcardlist1ItemList() {
    return [
      Doctorcardlist1ItemModel(
          appointmentDone: "Appointment done",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          appointmentdone: ImageConstant.imgImage75x75,
          doctorName: "Dr. Randy Wigham",
          doctorSpecialty: "General Medical Checkup",
          rating: "4.8",
          reviewCount: "(4,279 reviews)"),
      Doctorcardlist1ItemModel(
          appointmentDone: "Appointment done",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          appointmentdone: ImageConstant.imgImage74x74,
          doctorName: "Dr. Jack Sulivan",
          doctorSpecialty: "General Medical Checkup",
          rating: "4.8",
          reviewCount: "(4,279 reviews)"),
      Doctorcardlist1ItemModel(
          appointmentDone: "Appointment done",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM",
          appointmentdone: ImageConstant.imgRectangle2495,
          doctorName: "Drg. Hanna Stanton",
          doctorSpecialty: "General Medical Checkup",
          rating: "4.8",
          reviewCount: "(4,279 reviews)")
    ];
  }
}
