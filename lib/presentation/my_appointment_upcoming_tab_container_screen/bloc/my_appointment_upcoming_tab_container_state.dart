// ignore_for_file: must_be_immutable

part of 'my_appointment_upcoming_tab_container_bloc.dart';

/// Represents the state of MyAppointmentUpcomingTabContainer in the application.
class MyAppointmentUpcomingTabContainerState extends Equatable {
  MyAppointmentUpcomingTabContainerState(
      {this.myAppointmentUpcomingTabContainerModelObj});

  MyAppointmentUpcomingTabContainerModel?
      myAppointmentUpcomingTabContainerModelObj;

  @override
  List<Object?> get props => [
        myAppointmentUpcomingTabContainerModelObj,
      ];
  MyAppointmentUpcomingTabContainerState copyWith(
      {MyAppointmentUpcomingTabContainerModel?
          myAppointmentUpcomingTabContainerModelObj}) {
    return MyAppointmentUpcomingTabContainerState(
      myAppointmentUpcomingTabContainerModelObj:
          myAppointmentUpcomingTabContainerModelObj ??
              this.myAppointmentUpcomingTabContainerModelObj,
    );
  }
}
