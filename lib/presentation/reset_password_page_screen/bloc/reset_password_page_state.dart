// ignore_for_file: must_be_immutable

part of 'reset_password_page_bloc.dart';

/// Represents the state of ResetPasswordPage in the application.
class ResetPasswordPageState extends Equatable {
  ResetPasswordPageState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.resetPasswordPageModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  ResetPasswordPageModel? resetPasswordPageModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        resetPasswordPageModelObj,
      ];
  ResetPasswordPageState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    ResetPasswordPageModel? resetPasswordPageModelObj,
  }) {
    return ResetPasswordPageState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      resetPasswordPageModelObj:
          resetPasswordPageModelObj ?? this.resetPasswordPageModelObj,
    );
  }
}
