// ignore_for_file: must_be_immutable

part of 'my_appointment_cancelled_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyAppointmentCancelledOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyAppointmentCancelledOneEvent extends Equatable {}

/// Event that is dispatched when the MyAppointmentCancelledOne widget is first created.
class MyAppointmentCancelledOneInitialEvent
    extends MyAppointmentCancelledOneEvent {
  @override
  List<Object?> get props => [];
}
