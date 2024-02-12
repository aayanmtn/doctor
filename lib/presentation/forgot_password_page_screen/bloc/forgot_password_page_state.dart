// ignore_for_file: must_be_immutable

part of 'forgot_password_page_bloc.dart';

/// Represents the state of ForgotPasswordPage in the application.
class ForgotPasswordPageState extends Equatable {
  ForgotPasswordPageState({
    this.emailController,
    this.forgotPasswordPageModelObj,
  });

  TextEditingController? emailController;

  ForgotPasswordPageModel? forgotPasswordPageModelObj;

  @override
  List<Object?> get props => [
        emailController,
        forgotPasswordPageModelObj,
      ];
  ForgotPasswordPageState copyWith({
    TextEditingController? emailController,
    ForgotPasswordPageModel? forgotPasswordPageModelObj,
  }) {
    return ForgotPasswordPageState(
      emailController: emailController ?? this.emailController,
      forgotPasswordPageModelObj:
          forgotPasswordPageModelObj ?? this.forgotPasswordPageModelObj,
    );
  }
}
