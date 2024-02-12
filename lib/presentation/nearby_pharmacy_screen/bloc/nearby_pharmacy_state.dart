// ignore_for_file: must_be_immutable

part of 'nearby_pharmacy_bloc.dart';

/// Represents the state of NearbyPharmacy in the application.
class NearbyPharmacyState extends Equatable {
  NearbyPharmacyState({
    this.searchController,
    this.nearbyPharmacyModelObj,
  });

  TextEditingController? searchController;

  NearbyPharmacyModel? nearbyPharmacyModelObj;

  @override
  List<Object?> get props => [
        searchController,
        nearbyPharmacyModelObj,
      ];
  NearbyPharmacyState copyWith({
    TextEditingController? searchController,
    NearbyPharmacyModel? nearbyPharmacyModelObj,
  }) {
    return NearbyPharmacyState(
      searchController: searchController ?? this.searchController,
      nearbyPharmacyModelObj:
          nearbyPharmacyModelObj ?? this.nearbyPharmacyModelObj,
    );
  }
}
