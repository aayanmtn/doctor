// ignore_for_file: must_be_immutable

part of 'emergency_patient_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmergencyPatientTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergencyPatientTwoEvent extends Equatable {}

/// Event that is dispatched when the EmergencyPatientTwo widget is first created.
class EmergencyPatientTwoInitialEvent extends EmergencyPatientTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends EmergencyPatientTwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
