// ignore_for_file: must_be_immutable

part of 'my_appointment_upcoming_bloc.dart';

/// Represents the state of MyAppointmentUpcoming in the application.
class MyAppointmentUpcomingState extends Equatable {
  MyAppointmentUpcomingState({this.myAppointmentUpcomingModelObj});

  MyAppointmentUpcomingModel? myAppointmentUpcomingModelObj;

  @override
  List<Object?> get props => [
        myAppointmentUpcomingModelObj,
      ];
  MyAppointmentUpcomingState copyWith(
      {MyAppointmentUpcomingModel? myAppointmentUpcomingModelObj}) {
    return MyAppointmentUpcomingState(
      myAppointmentUpcomingModelObj:
          myAppointmentUpcomingModelObj ?? this.myAppointmentUpcomingModelObj,
    );
  }
}
