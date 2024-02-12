// ignore_for_file: must_be_immutable

part of 'pop_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PopUpEvent extends Equatable {}

/// Event that is dispatched when the PopUp widget is first created.
class PopUpInitialEvent extends PopUpEvent {
  @override
  List<Object?> get props => [];
}
