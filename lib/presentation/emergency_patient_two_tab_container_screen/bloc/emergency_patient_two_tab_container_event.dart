// ignore_for_file: must_be_immutable

part of 'emergency_patient_two_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmergencyPatientTwoTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergencyPatientTwoTabContainerEvent extends Equatable {}

/// Event that is dispatched when the EmergencyPatientTwoTabContainer widget is first created.
class EmergencyPatientTwoTabContainerInitialEvent
    extends EmergencyPatientTwoTabContainerEvent {
  @override
  List<Object?> get props => [];
}
