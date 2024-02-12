// ignore_for_file: must_be_immutable

part of 'loginsuccess_bloc.dart';

/// Represents the state of Loginsuccess in the application.
class LoginsuccessState extends Equatable {
  LoginsuccessState({this.loginsuccessModelObj});

  LoginsuccessModel? loginsuccessModelObj;

  @override
  List<Object?> get props => [
        loginsuccessModelObj,
      ];
  LoginsuccessState copyWith({LoginsuccessModel? loginsuccessModelObj}) {
    return LoginsuccessState(
      loginsuccessModelObj: loginsuccessModelObj ?? this.loginsuccessModelObj,
    );
  }
}
