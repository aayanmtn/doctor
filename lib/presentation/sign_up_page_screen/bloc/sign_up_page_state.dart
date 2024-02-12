// ignore_for_file: must_be_immutable

part of 'sign_up_page_bloc.dart';

/// Represents the state of SignUpPage in the application.
class SignUpPageState extends Equatable {
  SignUpPageState({
    this.signUpFormController,
    this.emailFieldController,
    this.passwordFieldController,
    this.confirmPasswordFieldController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signUpPageModelObj,
  });

  TextEditingController? signUpFormController;

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  TextEditingController? confirmPasswordFieldController;

  SignUpPageModel? signUpPageModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        signUpFormController,
        emailFieldController,
        passwordFieldController,
        confirmPasswordFieldController,
        isShowPassword,
        isShowPassword1,
        signUpPageModelObj,
      ];
  SignUpPageState copyWith({
    TextEditingController? signUpFormController,
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    TextEditingController? confirmPasswordFieldController,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignUpPageModel? signUpPageModelObj,
  }) {
    return SignUpPageState(
      signUpFormController: signUpFormController ?? this.signUpFormController,
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      confirmPasswordFieldController:
          confirmPasswordFieldController ?? this.confirmPasswordFieldController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signUpPageModelObj: signUpPageModelObj ?? this.signUpPageModelObj,
    );
  }
}
