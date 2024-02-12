// ignore_for_file: must_be_immutable

part of 'pop_up_bloc.dart';

/// Represents the state of PopUp in the application.
class PopUpState extends Equatable {
  PopUpState({this.popUpModelObj});

  PopUpModel? popUpModelObj;

  @override
  List<Object?> get props => [
        popUpModelObj,
      ];
  PopUpState copyWith({PopUpModel? popUpModelObj}) {
    return PopUpState(
      popUpModelObj: popUpModelObj ?? this.popUpModelObj,
    );
  }
}
