// ignore_for_file: must_be_immutable

part of 'my_appointment_completed_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentCompletedOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentCompletedOneEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentCompletedOne widget is first created.
class MyAppointmentCompletedOneInitialEvent
    extends MyAppointmentCompletedOneEvent {
  @override
  List<Object?> get props => [];
}
