// ignore_for_file: must_be_immutable

part of 'detail_doctor_about_me_bloc.dart';

/// Represents the state of DetailDoctorAboutMe in the application.
class DetailDoctorAboutMeState extends Equatable {
  DetailDoctorAboutMeState({this.detailDoctorAboutMeModelObj});

  DetailDoctorAboutMeModel? detailDoctorAboutMeModelObj;

  @override
  List<Object?> get props => [
        detailDoctorAboutMeModelObj,
      ];
  DetailDoctorAboutMeState copyWith(
      {DetailDoctorAboutMeModel? detailDoctorAboutMeModelObj}) {
    return DetailDoctorAboutMeState(
      detailDoctorAboutMeModelObj:
          detailDoctorAboutMeModelObj ?? this.detailDoctorAboutMeModelObj,
    );
  }
}
