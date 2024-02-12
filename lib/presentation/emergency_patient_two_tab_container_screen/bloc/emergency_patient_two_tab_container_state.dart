// ignore_for_file: must_be_immutable

part of 'emergency_patient_two_tab_container_bloc.dart';

/// Represents the state of EmergencyPatientTwoTabContainer in the application.
class EmergencyPatientTwoTabContainerState extends Equatable {
  EmergencyPatientTwoTabContainerState(
      {this.emergencyPatientTwoTabContainerModelObj});

  EmergencyPatientTwoTabContainerModel? emergencyPatientTwoTabContainerModelObj;

  @override
  List<Object?> get props => [
        emergencyPatientTwoTabContainerModelObj,
      ];
  EmergencyPatientTwoTabContainerState copyWith(
      {EmergencyPatientTwoTabContainerModel?
          emergencyPatientTwoTabContainerModelObj}) {
    return EmergencyPatientTwoTabContainerState(
      emergencyPatientTwoTabContainerModelObj:
          emergencyPatientTwoTabContainerModelObj ??
              this.emergencyPatientTwoTabContainerModelObj,
    );
  }
}
