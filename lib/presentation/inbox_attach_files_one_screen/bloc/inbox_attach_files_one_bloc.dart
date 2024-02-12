import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/inbox_attach_files_one_screen/models/inbox_attach_files_one_model.dart';part 'inbox_attach_files_one_event.dart';part 'inbox_attach_files_one_state.dart';/// A bloc that manages the state of a InboxAttachFilesOne according to the event that is dispatched to it.
class InboxAttachFilesOneBloc extends Bloc<InboxAttachFilesOneEvent, InboxAttachFilesOneState> {InboxAttachFilesOneBloc(InboxAttachFilesOneState initialState) : super(initialState) { on<InboxAttachFilesOneInitialEvent>(_onInitialize); }

_onInitialize(InboxAttachFilesOneInitialEvent event, Emitter<InboxAttachFilesOneState> emit, ) async  {  } 
 }
