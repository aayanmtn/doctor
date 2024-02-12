import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/emergency_patient_two_page/models/emergency_patient_two_model.dart';
part 'emergency_patient_two_event.dart';
part 'emergency_patient_two_state.dart';

/// A bloc that manages the state of a EmergencyPatientTwo according to the event that is dispatched to it.
class EmergencyPatientTwoBloc
    extends Bloc<EmergencyPatientTwoEvent, EmergencyPatientTwoState> {
  EmergencyPatientTwoBloc(EmergencyPatientTwoState initialState)
      : super(initialState) {
    on<EmergencyPatientTwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<EmergencyPatientTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    EmergencyPatientTwoInitialEvent event,
    Emitter<EmergencyPatientTwoState> emit,
  ) async {
    emit(state.copyWith(
      paytovalueController: TextEditingController(),
      reasonvalueController: TextEditingController(),
    ));
    emit(state.copyWith(
        emergencyPatientTwoModelObj:
            state.emergencyPatientTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
