// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard_item_model.dart';import 'productcard1_item_model.dart';/// This class defines the variables used in the [search_medicines_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchMedicinesModel extends Equatable {SearchMedicinesModel({this.productcardItemList = const [], this.productcard1ItemList = const [], }) {  }

List<ProductcardItemModel> productcardItemList;

List<Productcard1ItemModel> productcard1ItemList;

SearchMedicinesModel copyWith({List<ProductcardItemModel>? productcardItemList, List<Productcard1ItemModel>? productcard1ItemList, }) { return SearchMedicinesModel(
productcardItemList : productcardItemList ?? this.productcardItemList,
productcard1ItemList : productcard1ItemList ?? this.productcard1ItemList,
); } 
@override List<Object?> get props => [productcardItemList,productcard1ItemList];
 }
