// ignore_for_file: must_be_immutable

part of 'my_appointment_upcoming_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentUpcomingTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentUpcomingTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentUpcomingTabContainer widget is first created.
class MyAppointmentUpcomingTabContainerInitialEvent
    extends MyAppointmentUpcomingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
