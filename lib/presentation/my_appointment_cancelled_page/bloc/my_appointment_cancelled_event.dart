// ignore_for_file: must_be_immutable

part of 'my_appointment_cancelled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentCancelled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentCancelledEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentCancelled widget is first created.
class MyAppointmentCancelledInitialEvent extends MyAppointmentCancelledEvent {
  @override
  List<Object?> get props => [];
}
