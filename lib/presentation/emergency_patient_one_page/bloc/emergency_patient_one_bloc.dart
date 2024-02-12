import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/emergency_patient_one_page/models/emergency_patient_one_model.dart';
part 'emergency_patient_one_event.dart';
part 'emergency_patient_one_state.dart';

/// A bloc that manages the state of a EmergencyPatientOne according to the event that is dispatched to it.
class EmergencyPatientOneBloc
    extends Bloc<EmergencyPatientOneEvent, EmergencyPatientOneState> {
  EmergencyPatientOneBloc(EmergencyPatientOneState initialState)
      : super(initialState) {
    on<EmergencyPatientOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<EmergencyPatientOneState> emit,
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
    EmergencyPatientOneInitialEvent event,
    Emitter<EmergencyPatientOneState> emit,
  ) async {
    emit(state.copyWith(
      paytovalueController: TextEditingController(),
      reasonvalueController: TextEditingController(),
    ));
    emit(state.copyWith(
        emergencyPatientOneModelObj:
            state.emergencyPatientOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
