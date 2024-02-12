import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/inbox_conversation_one_screen/models/inbox_conversation_one_model.dart';part 'inbox_conversation_one_event.dart';part 'inbox_conversation_one_state.dart';/// A bloc that manages the state of a InboxConversationOne according to the event that is dispatched to it.
class InboxConversationOneBloc extends Bloc<InboxConversationOneEvent, InboxConversationOneState> {InboxConversationOneBloc(InboxConversationOneState initialState) : super(initialState) { on<InboxConversationOneInitialEvent>(_onInitialize); }

_onInitialize(InboxConversationOneInitialEvent event, Emitter<InboxConversationOneState> emit, ) async  { emit(state.copyWith(messageController: TextEditingController())); } 
 }
