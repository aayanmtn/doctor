import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/offline_screen/models/offline_model.dart';
part 'offline_event.dart';
part 'offline_state.dart';

/// A bloc that manages the state of a Offline according to the event that is dispatched to it.
class OfflineBloc extends Bloc<OfflineEvent, OfflineState> {
  OfflineBloc(OfflineState initialState) : super(initialState) {
    on<OfflineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OfflineInitialEvent event,
    Emitter<OfflineState> emit,
  ) async {}
}
