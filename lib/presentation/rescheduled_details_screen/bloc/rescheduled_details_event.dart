// ignore_for_file: must_be_immutable

part of 'rescheduled_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RescheduledDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RescheduledDetailsEvent extends Equatable {}

/// Event that is dispatched when the RescheduledDetails widget is first created.
class RescheduledDetailsInitialEvent extends RescheduledDetailsEvent {
  @override
  List<Object?> get props => [];
}
