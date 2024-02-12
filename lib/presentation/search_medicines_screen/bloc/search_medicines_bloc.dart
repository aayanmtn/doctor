import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard_item_model.dart';
import '../models/productcard1_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/search_medicines_screen/models/search_medicines_model.dart';
part 'search_medicines_event.dart';
part 'search_medicines_state.dart';

/// A bloc that manages the state of a SearchMedicines according to the event that is dispatched to it.
class SearchMedicinesBloc
    extends Bloc<SearchMedicinesEvent, SearchMedicinesState> {
  SearchMedicinesBloc(SearchMedicinesState initialState) : super(initialState) {
    on<SearchMedicinesInitialEvent>(_onInitialize);
  }

  List<ProductcardItemModel> fillProductcardItemList() {
    return [
      ProductcardItemModel(
          saleText: "SALE",
          accuCheckActive: "Accu-check Active\nTest Strip",
          priceText: "Rs.112",
          ratingText1: "4.2",
          ratingText2: "4.2"),
      ProductcardItemModel(
          saleText: "SALE",
          accuCheckActive: "Accu-check Active\nTest Strip",
          priceText: "Rs.112",
          ratingText1: "4.2",
          ratingText2: "4.2")
    ];
  }

  List<Productcard1ItemModel> fillProductcard1ItemList() {
    return [
      Productcard1ItemModel(
          bpMonitorName: "Omron HEM-8712 \nBP Monitor",
          bpMonitorPrice: "Rs.150",
          discountText: "15% OFF"),
      Productcard1ItemModel(
          bpMonitorName: "Omron HEM-8712 \nBP Monitor",
          bpMonitorPrice: "Rs.150",
          discountText: "15% OFF")
    ];
  }

  _onInitialize(
    SearchMedicinesInitialEvent event,
    Emitter<SearchMedicinesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchMedicinesModelObj: state.searchMedicinesModelObj?.copyWith(
      productcardItemList: fillProductcardItemList(),
      productcard1ItemList: fillProductcard1ItemList(),
    )));
  }
}
