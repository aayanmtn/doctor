// ignore_for_file: must_be_immutable

part of 'custom_appointment_time_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CustomAppointmentTime widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CustomAppointmentTimeEvent extends Equatable {}

/// Event that is dispatched when the CustomAppointmentTime widget is first created.
class CustomAppointmentTimeInitialEvent extends CustomAppointmentTimeEvent {
  @override
  List<Object?> get props => [];
}
