// ignore_for_file: must_be_immutable

part of 'new_appointment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewAppointment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewAppointmentEvent extends Equatable {}

/// Event that is dispatched when the NewAppointment widget is first created.
class NewAppointmentInitialEvent extends NewAppointmentEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends NewAppointmentEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends NewAppointmentEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends NewAppointmentEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipView1Event extends NewAppointmentEvent {
  UpdateChipView1Event({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
