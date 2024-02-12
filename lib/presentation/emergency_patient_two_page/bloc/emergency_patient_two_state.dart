// ignore_for_file: must_be_immutable

part of 'emergency_patient_two_bloc.dart';

/// Represents the state of EmergencyPatientTwo in the application.
class EmergencyPatientTwoState extends Equatable {
  EmergencyPatientTwoState({
    this.paytovalueController,
    this.reasonvalueController,
    this.selectedDropDownValue,
    this.emergencyPatientTwoModelObj,
  });

  TextEditingController? paytovalueController;

  TextEditingController? reasonvalueController;

  SelectionPopupModel? selectedDropDownValue;

  EmergencyPatientTwoModel? emergencyPatientTwoModelObj;

  @override
  List<Object?> get props => [
        paytovalueController,
        reasonvalueController,
        selectedDropDownValue,
        emergencyPatientTwoModelObj,
      ];
  EmergencyPatientTwoState copyWith({
    TextEditingController? paytovalueController,
    TextEditingController? reasonvalueController,
    SelectionPopupModel? selectedDropDownValue,
    EmergencyPatientTwoModel? emergencyPatientTwoModelObj,
  }) {
    return EmergencyPatientTwoState(
      paytovalueController: paytovalueController ?? this.paytovalueController,
      reasonvalueController:
          reasonvalueController ?? this.reasonvalueController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      emergencyPatientTwoModelObj:
          emergencyPatientTwoModelObj ?? this.emergencyPatientTwoModelObj,
    );
  }
}
