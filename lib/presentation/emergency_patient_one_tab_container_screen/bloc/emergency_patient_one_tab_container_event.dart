// ignore_for_file: must_be_immutable

part of 'emergency_patient_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmergencyPatientOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergencyPatientOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the EmergencyPatientOneTabContainer widget is first created.
class EmergencyPatientOneTabContainerInitialEvent
    extends EmergencyPatientOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
