// ignore_for_file: must_be_immutable

part of 'search_doctors_bloc.dart';

/// Represents the state of SearchDoctors in the application.
class SearchDoctorsState extends Equatable {
  SearchDoctorsState({
    this.searchBarController,
    this.filterCategoryController,
    this.searchDoctorsModelObj,
  });

  TextEditingController? searchBarController;

  TextEditingController? filterCategoryController;

  SearchDoctorsModel? searchDoctorsModelObj;

  @override
  List<Object?> get props => [
        searchBarController,
        filterCategoryController,
        searchDoctorsModelObj,
      ];
  SearchDoctorsState copyWith({
    TextEditingController? searchBarController,
    TextEditingController? filterCategoryController,
    SearchDoctorsModel? searchDoctorsModelObj,
  }) {
    return SearchDoctorsState(
      searchBarController: searchBarController ?? this.searchBarController,
      filterCategoryController:
          filterCategoryController ?? this.filterCategoryController,
      searchDoctorsModelObj:
          searchDoctorsModelObj ?? this.searchDoctorsModelObj,
    );
  }
}
