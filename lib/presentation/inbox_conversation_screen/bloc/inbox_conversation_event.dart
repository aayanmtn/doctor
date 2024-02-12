// ignore_for_file: must_be_immutable

part of 'inbox_conversation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxConversation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxConversationEvent extends Equatable {}

/// Event that is dispatched when the InboxConversation widget is first created.
class InboxConversationInitialEvent extends InboxConversationEvent {
  @override
  List<Object?> get props => [];
}
