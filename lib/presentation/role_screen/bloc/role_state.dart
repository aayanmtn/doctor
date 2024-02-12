// ignore_for_file: must_be_immutable

part of 'role_bloc.dart';

/// Represents the state of Role in the application.
class RoleState extends Equatable {
  RoleState({
    this.radioGroup = "",
    this.roleModelObj,
  });

  RoleModel? roleModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        roleModelObj,
      ];
  RoleState copyWith({
    String? radioGroup,
    RoleModel? roleModelObj,
  }) {
    return RoleState(
      radioGroup: radioGroup ?? this.radioGroup,
      roleModelObj: roleModelObj ?? this.roleModelObj,
    );
  }
}
