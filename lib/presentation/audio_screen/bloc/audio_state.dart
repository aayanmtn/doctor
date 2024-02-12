// ignore_for_file: must_be_immutable

part of 'audio_bloc.dart';

/// Represents the state of Audio in the application.
class AudioState extends Equatable {
  AudioState({this.audioModelObj});

  AudioModel? audioModelObj;

  @override
  List<Object?> get props => [
        audioModelObj,
      ];
  AudioState copyWith({AudioModel? audioModelObj}) {
    return AudioState(
      audioModelObj: audioModelObj ?? this.audioModelObj,
    );
  }
}
