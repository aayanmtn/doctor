// ignore_for_file: must_be_immutable

part of 'detail_doctor_review_bloc.dart';

/// Represents the state of DetailDoctorReview in the application.
class DetailDoctorReviewState extends Equatable {
  DetailDoctorReviewState({this.detailDoctorReviewModelObj});

  DetailDoctorReviewModel? detailDoctorReviewModelObj;

  @override
  List<Object?> get props => [
        detailDoctorReviewModelObj,
      ];
  DetailDoctorReviewState copyWith(
      {DetailDoctorReviewModel? detailDoctorReviewModelObj}) {
    return DetailDoctorReviewState(
      detailDoctorReviewModelObj:
          detailDoctorReviewModelObj ?? this.detailDoctorReviewModelObj,
    );
  }
}
