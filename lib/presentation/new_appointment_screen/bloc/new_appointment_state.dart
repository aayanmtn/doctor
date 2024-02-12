// ignore_for_file: must_be_immutable

part of 'new_appointment_bloc.dart';

/// Represents the state of NewAppointment in the application.
class NewAppointmentState extends Equatable {
  NewAppointmentState({
    this.fullNameController,
    this.writeProblemController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDatesFromCalendar1,
    this.newAppointmentModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? writeProblemController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  NewAppointmentModel? newAppointmentModelObj;

  DateTime? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        fullNameController,
        writeProblemController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDatesFromCalendar1,
        newAppointmentModelObj,
      ];
  NewAppointmentState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? writeProblemController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    DateTime? selectedDatesFromCalendar1,
    NewAppointmentModel? newAppointmentModelObj,
  }) {
    return NewAppointmentState(
      fullNameController: fullNameController ?? this.fullNameController,
      writeProblemController:
          writeProblemController ?? this.writeProblemController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      newAppointmentModelObj:
          newAppointmentModelObj ?? this.newAppointmentModelObj,
    );
  }
}
