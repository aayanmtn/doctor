import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/phonenumber_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_screen/models/search_doctors_model.dart';
part 'search_doctors_event.dart';
part 'search_doctors_state.dart';

/// A bloc that manages the state of a SearchDoctors according to the event that is dispatched to it.
class SearchDoctorsBloc extends Bloc<SearchDoctorsEvent, SearchDoctorsState> {
  SearchDoctorsBloc(SearchDoctorsState initialState) : super(initialState) {
    on<SearchDoctorsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchDoctorsState> emit,
  ) {
    List<PhonenumberItemModel> newList = List<PhonenumberItemModel>.from(
        state.searchDoctorsModelObj!.phonenumberItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        searchDoctorsModelObj: state.searchDoctorsModelObj
            ?.copyWith(phonenumberItemList: newList)));
  }

  List<PhonenumberItemModel> fillPhonenumberItemList() {
    return List.generate(2, (index) => PhonenumberItemModel());
  }

  _onInitialize(
    SearchDoctorsInitialEvent event,
    Emitter<SearchDoctorsState> emit,
  ) async {
    emit(state.copyWith(
      searchBarController: TextEditingController(),
      filterCategoryController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchDoctorsModelObj: state.searchDoctorsModelObj?.copyWith(
      phonenumberItemList: fillPhonenumberItemList(),
    )));
  }
}
