import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/inbox_conversation_screen/models/inbox_conversation_model.dart';part 'inbox_conversation_event.dart';part 'inbox_conversation_state.dart';/// A bloc that manages the state of a InboxConversation according to the event that is dispatched to it.
class InboxConversationBloc extends Bloc<InboxConversationEvent, InboxConversationState> {InboxConversationBloc(InboxConversationState initialState) : super(initialState) { on<InboxConversationInitialEvent>(_onInitialize); }

_onInitialize(InboxConversationInitialEvent event, Emitter<InboxConversationState> emit, ) async  { emit(state.copyWith(messageController: TextEditingController())); } 
 }
