// ignore_for_file: must_be_immutable

part of 'emergency_patient_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmergencyPatient widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergencyPatientEvent extends Equatable {}

/// Event that is dispatched when the EmergencyPatient widget is first created.
class EmergencyPatientInitialEvent extends EmergencyPatientEvent {
  @override
  List<Object?> get props => [];
}
