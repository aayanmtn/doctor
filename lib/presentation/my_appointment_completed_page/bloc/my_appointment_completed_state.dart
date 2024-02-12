// ignore_for_file: must_be_immutable

part of 'my_appointment_completed_bloc.dart';

/// Represents the state of MyAppointmentCompleted in the application.
class MyAppointmentCompletedState extends Equatable {
  MyAppointmentCompletedState({this.myAppointmentCompletedModelObj});

  MyAppointmentCompletedModel? myAppointmentCompletedModelObj;

  @override
  List<Object?> get props => [
        myAppointmentCompletedModelObj,
      ];
  MyAppointmentCompletedState copyWith(
      {MyAppointmentCompletedModel? myAppointmentCompletedModelObj}) {
    return MyAppointmentCompletedState(
      myAppointmentCompletedModelObj:
          myAppointmentCompletedModelObj ?? this.myAppointmentCompletedModelObj,
    );
  }
}
