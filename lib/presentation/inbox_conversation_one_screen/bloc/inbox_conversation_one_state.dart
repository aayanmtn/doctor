// ignore_for_file: must_be_immutable

part of 'inbox_conversation_one_bloc.dart';

/// Represents the state of InboxConversationOne in the application.
class InboxConversationOneState extends Equatable {
  InboxConversationOneState({
    this.messageController,
    this.inboxConversationOneModelObj,
  });

  TextEditingController? messageController;

  InboxConversationOneModel? inboxConversationOneModelObj;

  @override
  List<Object?> get props => [
        messageController,
        inboxConversationOneModelObj,
      ];
  InboxConversationOneState copyWith({
    TextEditingController? messageController,
    InboxConversationOneModel? inboxConversationOneModelObj,
  }) {
    return InboxConversationOneState(
      messageController: messageController ?? this.messageController,
      inboxConversationOneModelObj:
          inboxConversationOneModelObj ?? this.inboxConversationOneModelObj,
    );
  }
}
