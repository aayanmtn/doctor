// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'dynamicview_item_model.dart';import '../../../core/app_export.dart';import 'productlist_item_model.dart';/// This class defines the variables used in the [home_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeOneModel extends Equatable {HomeOneModel({this.dynamicviewItemList = const [], this.productlistItemList = const [], }) {  }

List<DynamicviewItemModel> dynamicviewItemList;

List<ProductlistItemModel> productlistItemList;

HomeOneModel copyWith({List<DynamicviewItemModel>? dynamicviewItemList, List<ProductlistItemModel>? productlistItemList, }) { return HomeOneModel(
dynamicviewItemList : dynamicviewItemList ?? this.dynamicviewItemList,
productlistItemList : productlistItemList ?? this.productlistItemList,
); } 
@override List<Object?> get props => [dynamicviewItemList,productlistItemList];
 }
