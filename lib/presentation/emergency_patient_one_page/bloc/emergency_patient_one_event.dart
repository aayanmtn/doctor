// ignore_for_file: must_be_immutable

part of 'emergency_patient_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmergencyPatientOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergencyPatientOneEvent extends Equatable {}

/// Event that is dispatched when the EmergencyPatientOne widget is first created.
class EmergencyPatientOneInitialEvent extends EmergencyPatientOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends EmergencyPatientOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
