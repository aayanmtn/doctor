// ignore_for_file: must_be_immutable

part of 'my_appointment_upcoming_one_bloc.dart';

/// Represents the state of MyAppointmentUpcomingOne in the application.
class MyAppointmentUpcomingOneState extends Equatable {
  MyAppointmentUpcomingOneState({this.myAppointmentUpcomingOneModelObj});

  MyAppointmentUpcomingOneModel? myAppointmentUpcomingOneModelObj;

  @override
  List<Object?> get props => [
        myAppointmentUpcomingOneModelObj,
      ];
  MyAppointmentUpcomingOneState copyWith(
      {MyAppointmentUpcomingOneModel? myAppointmentUpcomingOneModelObj}) {
    return MyAppointmentUpcomingOneState(
      myAppointmentUpcomingOneModelObj: myAppointmentUpcomingOneModelObj ??
          this.myAppointmentUpcomingOneModelObj,
    );
  }
}
