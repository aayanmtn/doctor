import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/audio_screen/models/audio_model.dart';
part 'audio_event.dart';
part 'audio_state.dart';

/// A bloc that manages the state of a Audio according to the event that is dispatched to it.
class AudioBloc extends Bloc<AudioEvent, AudioState> {
  AudioBloc(AudioState initialState) : super(initialState) {
    on<AudioInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AudioInitialEvent event,
    Emitter<AudioState> emit,
  ) async {}
}
