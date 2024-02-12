// ignore_for_file: must_be_immutable

part of 'cancel_popup_bloc.dart';

/// Represents the state of CancelPopup in the application.
class CancelPopupState extends Equatable {
  CancelPopupState({this.cancelPopupModelObj});

  CancelPopupModel? cancelPopupModelObj;

  @override
  List<Object?> get props => [
        cancelPopupModelObj,
      ];
  CancelPopupState copyWith({CancelPopupModel? cancelPopupModelObj}) {
    return CancelPopupState(
      cancelPopupModelObj: cancelPopupModelObj ?? this.cancelPopupModelObj,
    );
  }
}
