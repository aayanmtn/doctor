import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/inbox_attach_files_screen/models/inbox_attach_files_model.dart';part 'inbox_attach_files_event.dart';part 'inbox_attach_files_state.dart';/// A bloc that manages the state of a InboxAttachFiles according to the event that is dispatched to it.
class InboxAttachFilesBloc extends Bloc<InboxAttachFilesEvent, InboxAttachFilesState> {InboxAttachFilesBloc(InboxAttachFilesState initialState) : super(initialState) { on<InboxAttachFilesInitialEvent>(_onInitialize); }

_onInitialize(InboxAttachFilesInitialEvent event, Emitter<InboxAttachFilesState> emit, ) async  {  } 
 }
