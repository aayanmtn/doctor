// ignore_for_file: must_be_immutable

part of 'emergency_patient_bloc.dart';

/// Represents the state of EmergencyPatient in the application.
class EmergencyPatientState extends Equatable {
  EmergencyPatientState({this.emergencyPatientModelObj});

  EmergencyPatientModel? emergencyPatientModelObj;

  @override
  List<Object?> get props => [
        emergencyPatientModelObj,
      ];
  EmergencyPatientState copyWith(
      {EmergencyPatientModel? emergencyPatientModelObj}) {
    return EmergencyPatientState(
      emergencyPatientModelObj:
          emergencyPatientModelObj ?? this.emergencyPatientModelObj,
    );
  }
}
