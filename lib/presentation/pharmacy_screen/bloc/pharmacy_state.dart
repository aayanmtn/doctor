// ignore_for_file: must_be_immutable

part of 'pharmacy_bloc.dart';

/// Represents the state of Pharmacy in the application.
class PharmacyState extends Equatable {
  PharmacyState({this.pharmacyModelObj});

  PharmacyModel? pharmacyModelObj;

  @override
  List<Object?> get props => [
        pharmacyModelObj,
      ];
  PharmacyState copyWith({PharmacyModel? pharmacyModelObj}) {
    return PharmacyState(
      pharmacyModelObj: pharmacyModelObj ?? this.pharmacyModelObj,
    );
  }
}
