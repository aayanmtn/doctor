// ignore_for_file: must_be_immutable

part of 'cartempty_bloc.dart';

/// Represents the state of Cartempty in the application.
class CartemptyState extends Equatable {
  CartemptyState({this.cartemptyModelObj});

  CartemptyModel? cartemptyModelObj;

  @override
  List<Object?> get props => [
        cartemptyModelObj,
      ];
  CartemptyState copyWith({CartemptyModel? cartemptyModelObj}) {
    return CartemptyState(
      cartemptyModelObj: cartemptyModelObj ?? this.cartemptyModelObj,
    );
  }
}
