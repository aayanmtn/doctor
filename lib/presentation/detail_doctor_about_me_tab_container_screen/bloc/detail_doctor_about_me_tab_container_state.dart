// ignore_for_file: must_be_immutable

part of 'detail_doctor_about_me_tab_container_bloc.dart';

/// Represents the state of DetailDoctorAboutMeTabContainer in the application.
class DetailDoctorAboutMeTabContainerState extends Equatable {
  DetailDoctorAboutMeTabContainerState(
      {this.detailDoctorAboutMeTabContainerModelObj});

  DetailDoctorAboutMeTabContainerModel? detailDoctorAboutMeTabContainerModelObj;

  @override
  List<Object?> get props => [
        detailDoctorAboutMeTabContainerModelObj,
      ];
  DetailDoctorAboutMeTabContainerState copyWith(
      {DetailDoctorAboutMeTabContainerModel?
          detailDoctorAboutMeTabContainerModelObj}) {
    return DetailDoctorAboutMeTabContainerState(
      detailDoctorAboutMeTabContainerModelObj:
          detailDoctorAboutMeTabContainerModelObj ??
              this.detailDoctorAboutMeTabContainerModelObj,
    );
  }
}
