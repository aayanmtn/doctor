// ignore_for_file: must_be_immutable

part of 'emergency_patient_one_tab_container_bloc.dart';

/// Represents the state of EmergencyPatientOneTabContainer in the application.
class EmergencyPatientOneTabContainerState extends Equatable {
  EmergencyPatientOneTabContainerState(
      {this.emergencyPatientOneTabContainerModelObj});

  EmergencyPatientOneTabContainerModel? emergencyPatientOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        emergencyPatientOneTabContainerModelObj,
      ];
  EmergencyPatientOneTabContainerState copyWith(
      {EmergencyPatientOneTabContainerModel?
          emergencyPatientOneTabContainerModelObj}) {
    return EmergencyPatientOneTabContainerState(
      emergencyPatientOneTabContainerModelObj:
          emergencyPatientOneTabContainerModelObj ??
              this.emergencyPatientOneTabContainerModelObj,
    );
  }
}
