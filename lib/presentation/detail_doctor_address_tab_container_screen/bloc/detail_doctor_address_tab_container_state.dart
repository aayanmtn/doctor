// ignore_for_file: must_be_immutable

part of 'detail_doctor_address_tab_container_bloc.dart';

/// Represents the state of DetailDoctorAddressTabContainer in the application.
class DetailDoctorAddressTabContainerState extends Equatable {
  DetailDoctorAddressTabContainerState(
      {this.detailDoctorAddressTabContainerModelObj});

  DetailDoctorAddressTabContainerModel? detailDoctorAddressTabContainerModelObj;

  @override
  List<Object?> get props => [
        detailDoctorAddressTabContainerModelObj,
      ];
  DetailDoctorAddressTabContainerState copyWith(
      {DetailDoctorAddressTabContainerModel?
          detailDoctorAddressTabContainerModelObj}) {
    return DetailDoctorAddressTabContainerState(
      detailDoctorAddressTabContainerModelObj:
          detailDoctorAddressTabContainerModelObj ??
              this.detailDoctorAddressTabContainerModelObj,
    );
  }
}
