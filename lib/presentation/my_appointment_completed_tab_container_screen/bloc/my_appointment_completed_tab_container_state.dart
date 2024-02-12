// ignore_for_file: must_be_immutable

part of 'my_appointment_completed_tab_container_bloc.dart';

/// Represents the state of MyAppointmentCompletedTabContainer in the application.
class MyAppointmentCompletedTabContainerState extends Equatable {
  MyAppointmentCompletedTabContainerState(
      {this.myAppointmentCompletedTabContainerModelObj});

  MyAppointmentCompletedTabContainerModel?
      myAppointmentCompletedTabContainerModelObj;

  @override
  List<Object?> get props => [
        myAppointmentCompletedTabContainerModelObj,
      ];
  MyAppointmentCompletedTabContainerState copyWith(
      {MyAppointmentCompletedTabContainerModel?
          myAppointmentCompletedTabContainerModelObj}) {
    return MyAppointmentCompletedTabContainerState(
      myAppointmentCompletedTabContainerModelObj:
          myAppointmentCompletedTabContainerModelObj ??
              this.myAppointmentCompletedTabContainerModelObj,
    );
  }
}
