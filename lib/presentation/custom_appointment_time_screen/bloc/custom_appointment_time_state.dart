// ignore_for_file: must_be_immutable

part of 'custom_appointment_time_bloc.dart';

/// Represents the state of CustomAppointmentTime in the application.
class CustomAppointmentTimeState extends Equatable {
  CustomAppointmentTimeState({this.customAppointmentTimeModelObj});

  CustomAppointmentTimeModel? customAppointmentTimeModelObj;

  @override
  List<Object?> get props => [
        customAppointmentTimeModelObj,
      ];
  CustomAppointmentTimeState copyWith(
      {CustomAppointmentTimeModel? customAppointmentTimeModelObj}) {
    return CustomAppointmentTimeState(
      customAppointmentTimeModelObj:
          customAppointmentTimeModelObj ?? this.customAppointmentTimeModelObj,
    );
  }
}
