// ignore_for_file: must_be_immutable

part of 'emergency_patient_one_bloc.dart';

/// Represents the state of EmergencyPatientOne in the application.
class EmergencyPatientOneState extends Equatable {
  EmergencyPatientOneState({
    this.paytovalueController,
    this.reasonvalueController,
    this.selectedDropDownValue,
    this.emergencyPatientOneModelObj,
  });

  TextEditingController? paytovalueController;

  TextEditingController? reasonvalueController;

  SelectionPopupModel? selectedDropDownValue;

  EmergencyPatientOneModel? emergencyPatientOneModelObj;

  @override
  List<Object?> get props => [
        paytovalueController,
        reasonvalueController,
        selectedDropDownValue,
        emergencyPatientOneModelObj,
      ];
  EmergencyPatientOneState copyWith({
    TextEditingController? paytovalueController,
    TextEditingController? reasonvalueController,
    SelectionPopupModel? selectedDropDownValue,
    EmergencyPatientOneModel? emergencyPatientOneModelObj,
  }) {
    return EmergencyPatientOneState(
      paytovalueController: paytovalueController ?? this.paytovalueController,
      reasonvalueController:
          reasonvalueController ?? this.reasonvalueController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      emergencyPatientOneModelObj:
          emergencyPatientOneModelObj ?? this.emergencyPatientOneModelObj,
    );
  }
}
