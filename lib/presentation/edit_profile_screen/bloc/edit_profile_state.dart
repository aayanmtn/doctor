// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.userProfileController,
    this.emailFieldController,
    this.passwordFieldController,
    this.editProfileModelObj,
  });

  TextEditingController? userProfileController;

  TextEditingController? emailFieldController;

  TextEditingController? passwordFieldController;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        userProfileController,
        emailFieldController,
        passwordFieldController,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? userProfileController,
    TextEditingController? emailFieldController,
    TextEditingController? passwordFieldController,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      userProfileController:
          userProfileController ?? this.userProfileController,
      emailFieldController: emailFieldController ?? this.emailFieldController,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
