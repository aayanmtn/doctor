// ignore_for_file: must_be_immutable

part of 'cartempty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Cartempty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CartemptyEvent extends Equatable {}

/// Event that is dispatched when the Cartempty widget is first created.
class CartemptyInitialEvent extends CartemptyEvent {
  @override
  List<Object?> get props => [];
}
