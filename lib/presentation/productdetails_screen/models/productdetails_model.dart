// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget_item_model.dart';/// This class defines the variables used in the [productdetails_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductdetailsModel extends Equatable {ProductdetailsModel({this.widgetItemList = const []}) {  }

List<WidgetItemModel> widgetItemList;

ProductdetailsModel copyWith({List<WidgetItemModel>? widgetItemList}) { return ProductdetailsModel(
widgetItemList : widgetItemList ?? this.widgetItemList,
); } 
@override List<Object?> get props => [widgetItemList];
 }
