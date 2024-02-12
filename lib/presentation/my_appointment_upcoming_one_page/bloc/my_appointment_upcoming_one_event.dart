// ignore_for_file: must_be_immutable

part of 'my_appointment_upcoming_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentUpcomingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentUpcomingOneEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentUpcomingOne widget is first created.
class MyAppointmentUpcomingOneInitialEvent
    extends MyAppointmentUpcomingOneEvent {
  @override
  List<Object?> get props => [];
}
