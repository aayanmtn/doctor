// ignore_for_file: must_be_immutable

part of 'home_two_bloc.dart';

/// Represents the state of HomeTwo in the application.
class HomeTwoState extends Equatable {
  HomeTwoState({
    this.searchController,
    this.homeTwoModelObj,
  });

  TextEditingController? searchController;

  HomeTwoModel? homeTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homeTwoModelObj,
      ];
  HomeTwoState copyWith({
    TextEditingController? searchController,
    HomeTwoModel? homeTwoModelObj,
  }) {
    return HomeTwoState(
      searchController: searchController ?? this.searchController,
      homeTwoModelObj: homeTwoModelObj ?? this.homeTwoModelObj,
    );
  }
}
