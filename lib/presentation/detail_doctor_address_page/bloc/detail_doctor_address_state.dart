// ignore_for_file: must_be_immutable

part of 'detail_doctor_address_bloc.dart';

/// Represents the state of DetailDoctorAddress in the application.
class DetailDoctorAddressState extends Equatable {
  DetailDoctorAddressState({this.detailDoctorAddressModelObj});

  DetailDoctorAddressModel? detailDoctorAddressModelObj;

  @override
  List<Object?> get props => [
        detailDoctorAddressModelObj,
      ];
  DetailDoctorAddressState copyWith(
      {DetailDoctorAddressModel? detailDoctorAddressModelObj}) {
    return DetailDoctorAddressState(
      detailDoctorAddressModelObj:
          detailDoctorAddressModelObj ?? this.detailDoctorAddressModelObj,
    );
  }
}
