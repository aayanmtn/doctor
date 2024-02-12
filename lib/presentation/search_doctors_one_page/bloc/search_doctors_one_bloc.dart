import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/models/search_doctors_one_model.dart';
part 'search_doctors_one_event.dart';
part 'search_doctors_one_state.dart';

/// A bloc that manages the state of a SearchDoctorsOne according to the event that is dispatched to it.
class SearchDoctorsOneBloc
    extends Bloc<SearchDoctorsOneEvent, SearchDoctorsOneState> {
  SearchDoctorsOneBloc(SearchDoctorsOneState initialState)
      : super(initialState) {
    on<SearchDoctorsOneInitialEvent>(_onInitialize);
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          userImage2: ImageConstant.imgImage266x66,
          userName: "Carnegie Mondover",
          userSpecialty: "Orthopaedics"),
      Userprofile1ItemModel(
          userImage2: ImageConstant.imgImage21, userName: "Lurch Schpellchek"),
      Userprofile1ItemModel(
          userImage2: ImageConstant.imgImage23,
          userName: "Rodney Artichoke",
          userSpecialty: "Nephrology"),
      Userprofile1ItemModel(
          userImage2: ImageConstant.imgImage24,
          userName: "Rodney Artichoke",
          userSpecialty: "Nephrology")
    ];
  }

  _onInitialize(
    SearchDoctorsOneInitialEvent event,
    Emitter<SearchDoctorsOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      frameController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchDoctorsOneModelObj: state.searchDoctorsOneModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }
}
