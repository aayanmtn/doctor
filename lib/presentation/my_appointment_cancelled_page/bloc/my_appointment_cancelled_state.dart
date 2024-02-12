// ignore_for_file: must_be_immutable

part of 'my_appointment_cancelled_bloc.dart';

/// Represents the state of MyAppointmentCancelled in the application.
class MyAppointmentCancelledState extends Equatable {
  MyAppointmentCancelledState({this.myAppointmentCancelledModelObj});

  MyAppointmentCancelledModel? myAppointmentCancelledModelObj;

  @override
  List<Object?> get props => [
        myAppointmentCancelledModelObj,
      ];
  MyAppointmentCancelledState copyWith(
      {MyAppointmentCancelledModel? myAppointmentCancelledModelObj}) {
    return MyAppointmentCancelledState(
      myAppointmentCancelledModelObj:
          myAppointmentCancelledModelObj ?? this.myAppointmentCancelledModelObj,
    );
  }
}
