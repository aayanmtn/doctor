// ignore_for_file: must_be_immutable

part of 'inbox_conversation_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxConversationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxConversationOneEvent extends Equatable {}

/// Event that is dispatched when the InboxConversationOne widget is first created.
class InboxConversationOneInitialEvent extends InboxConversationOneEvent {
  @override
  List<Object?> get props => [];
}
