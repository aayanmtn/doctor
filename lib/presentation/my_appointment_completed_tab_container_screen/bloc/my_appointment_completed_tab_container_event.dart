// ignore_for_file: must_be_immutable

part of 'my_appointment_completed_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentCompletedTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentCompletedTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentCompletedTabContainer widget is first created.
class MyAppointmentCompletedTabContainerInitialEvent
    extends MyAppointmentCompletedTabContainerEvent {
  @override
  List<Object?> get props => [];
}
