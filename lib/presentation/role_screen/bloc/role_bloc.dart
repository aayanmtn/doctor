import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/role_screen/models/role_model.dart';
part 'role_event.dart';
part 'role_state.dart';

/// A bloc that manages the state of a Role according to the event that is dispatched to it.
class RoleBloc extends Bloc<RoleEvent, RoleState> {
  RoleBloc(RoleState initialState) : super(initialState) {
    on<RoleInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<RoleState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_i_am_a_patient", "lbl_i_am_a_doctor", "lbl_i_am_a_pharm"];
  }

  _onInitialize(
    RoleInitialEvent event,
    Emitter<RoleState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        roleModelObj: state.roleModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
