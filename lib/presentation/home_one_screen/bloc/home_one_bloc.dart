import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dynamicview_item_model.dart';
import '../models/productlist_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/home_one_screen/models/home_one_model.dart';
part 'home_one_event.dart';
part 'home_one_state.dart';

/// A bloc that manages the state of a HomeOne according to the event that is dispatched to it.
class HomeOneBloc extends Bloc<HomeOneEvent, HomeOneState> {
  HomeOneBloc(HomeOneState initialState) : super(initialState) {
    on<HomeOneInitialEvent>(_onInitialize);
  }

  List<DynamicviewItemModel> fillDynamicviewItemList() {
    return List.generate(1, (index) => DynamicviewItemModel());
  }

  List<ProductlistItemModel> fillProductlistItemList() {
    return [
      ProductlistItemModel(
          productImage: ImageConstant.imgImage387x87,
          productName: "Nutritional Drinks",
          productImage1: ImageConstant.imgImage4,
          categoryName: "Ayurveda")
    ];
  }

  _onInitialize(
    HomeOneInitialEvent event,
    Emitter<HomeOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeOneModelObj: state.homeOneModelObj?.copyWith(
      dynamicviewItemList: fillDynamicviewItemList(),
      productlistItemList: fillProductlistItemList(),
    )));
  }
}
