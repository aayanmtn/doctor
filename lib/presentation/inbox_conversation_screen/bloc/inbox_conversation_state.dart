// ignore_for_file: must_be_immutable

part of 'inbox_conversation_bloc.dart';

/// Represents the state of InboxConversation in the application.
class InboxConversationState extends Equatable {
  InboxConversationState({
    this.messageController,
    this.inboxConversationModelObj,
  });

  TextEditingController? messageController;

  InboxConversationModel? inboxConversationModelObj;

  @override
  List<Object?> get props => [
        messageController,
        inboxConversationModelObj,
      ];
  InboxConversationState copyWith({
    TextEditingController? messageController,
    InboxConversationModel? inboxConversationModelObj,
  }) {
    return InboxConversationState(
      messageController: messageController ?? this.messageController,
      inboxConversationModelObj:
          inboxConversationModelObj ?? this.inboxConversationModelObj,
    );
  }
}
