// ignore_for_file: must_be_immutable

part of 'my_appointment_completed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentCompleted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentCompletedEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentCompleted widget is first created.
class MyAppointmentCompletedInitialEvent extends MyAppointmentCompletedEvent {
  @override
  List<Object?> get props => [];
}
