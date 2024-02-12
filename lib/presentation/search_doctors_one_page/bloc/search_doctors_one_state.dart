// ignore_for_file: must_be_immutable

part of 'search_doctors_one_bloc.dart';

/// Represents the state of SearchDoctorsOne in the application.
class SearchDoctorsOneState extends Equatable {
  SearchDoctorsOneState({
    this.searchController,
    this.frameController,
    this.searchDoctorsOneModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? frameController;

  SearchDoctorsOneModel? searchDoctorsOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        frameController,
        searchDoctorsOneModelObj,
      ];
  SearchDoctorsOneState copyWith({
    TextEditingController? searchController,
    TextEditingController? frameController,
    SearchDoctorsOneModel? searchDoctorsOneModelObj,
  }) {
    return SearchDoctorsOneState(
      searchController: searchController ?? this.searchController,
      frameController: frameController ?? this.frameController,
      searchDoctorsOneModelObj:
          searchDoctorsOneModelObj ?? this.searchDoctorsOneModelObj,
    );
  }
}
