// ignore_for_file: must_be_immutable

part of 'search_doctors_one_container_bloc.dart';

/// Represents the state of SearchDoctorsOneContainer in the application.
class SearchDoctorsOneContainerState extends Equatable {
  SearchDoctorsOneContainerState({this.searchDoctorsOneContainerModelObj});

  SearchDoctorsOneContainerModel? searchDoctorsOneContainerModelObj;

  @override
  List<Object?> get props => [
        searchDoctorsOneContainerModelObj,
      ];
  SearchDoctorsOneContainerState copyWith(
      {SearchDoctorsOneContainerModel? searchDoctorsOneContainerModelObj}) {
    return SearchDoctorsOneContainerState(
      searchDoctorsOneContainerModelObj: searchDoctorsOneContainerModelObj ??
          this.searchDoctorsOneContainerModelObj,
    );
  }
}
