// ignore_for_file: must_be_immutable

part of 'my_appointment_upcoming_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentUpcoming widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentUpcomingEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentUpcoming widget is first created.
class MyAppointmentUpcomingInitialEvent extends MyAppointmentUpcomingEvent {
  @override
  List<Object?> get props => [];
}
