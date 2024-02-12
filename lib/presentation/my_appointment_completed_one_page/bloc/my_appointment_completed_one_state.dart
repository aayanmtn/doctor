// ignore_for_file: must_be_immutable

part of 'my_appointment_completed_one_bloc.dart';

/// Represents the state of MyAppointmentCompletedOne in the application.
class MyAppointmentCompletedOneState extends Equatable {
  MyAppointmentCompletedOneState({this.myAppointmentCompletedOneModelObj});

  MyAppointmentCompletedOneModel? myAppointmentCompletedOneModelObj;

  @override
  List<Object?> get props => [
        myAppointmentCompletedOneModelObj,
      ];
  MyAppointmentCompletedOneState copyWith(
      {MyAppointmentCompletedOneModel? myAppointmentCompletedOneModelObj}) {
    return MyAppointmentCompletedOneState(
      myAppointmentCompletedOneModelObj: myAppointmentCompletedOneModelObj ??
          this.myAppointmentCompletedOneModelObj,
    );
  }
}
