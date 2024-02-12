// ignore_for_file: must_be_immutable

part of 'offline_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Offline widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OfflineEvent extends Equatable {}

/// Event that is dispatched when the Offline widget is first created.
class OfflineInitialEvent extends OfflineEvent {
  @override
  List<Object?> get props => [];
}
