// ignore_for_file: must_be_immutable

part of 'login_page_bloc.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({
    this.passwordController,
    this.loginPageModelObj,
  });

  TextEditingController? passwordController;

  LoginPageModel? loginPageModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        loginPageModelObj,
      ];
  LoginPageState copyWith({
    TextEditingController? passwordController,
    LoginPageModel? loginPageModelObj,
  }) {
    return LoginPageState(
      passwordController: passwordController ?? this.passwordController,
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
