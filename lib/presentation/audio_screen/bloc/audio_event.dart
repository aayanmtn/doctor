// ignore_for_file: must_be_immutable

part of 'audio_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Audio widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AudioEvent extends Equatable {}

/// Event that is dispatched when the Audio widget is first created.
class AudioInitialEvent extends AudioEvent {
  @override
  List<Object?> get props => [];
}
