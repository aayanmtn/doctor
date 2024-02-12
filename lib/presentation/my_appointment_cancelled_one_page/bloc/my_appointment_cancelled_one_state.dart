// ignore_for_file: must_be_immutable

part of 'my_appointment_cancelled_one_bloc.dart';

/// Represents the state of MyAppointmentCancelledOne in the application.
class MyAppointmentCancelledOneState extends Equatable {
  MyAppointmentCancelledOneState({this.myAppointmentCancelledOneModelObj});

  MyAppointmentCancelledOneModel? myAppointmentCancelledOneModelObj;

  @override
  List<Object?> get props => [
        myAppointmentCancelledOneModelObj,
      ];
  MyAppointmentCancelledOneState copyWith(
      {MyAppointmentCancelledOneModel? myAppointmentCancelledOneModelObj}) {
    return MyAppointmentCancelledOneState(
      myAppointmentCancelledOneModelObj: myAppointmentCancelledOneModelObj ??
          this.myAppointmentCancelledOneModelObj,
    );
  }
}
