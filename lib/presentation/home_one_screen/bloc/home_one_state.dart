// ignore_for_file: must_be_immutable

part of 'home_one_bloc.dart';

/// Represents the state of HomeOne in the application.
class HomeOneState extends Equatable {
  HomeOneState({
    this.searchController,
    this.sliderIndex = 0,
    this.homeOneModelObj,
  });

  TextEditingController? searchController;

  HomeOneModel? homeOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        homeOneModelObj,
      ];
  HomeOneState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    HomeOneModel? homeOneModelObj,
  }) {
    return HomeOneState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeOneModelObj: homeOneModelObj ?? this.homeOneModelObj,
    );
  }
}
