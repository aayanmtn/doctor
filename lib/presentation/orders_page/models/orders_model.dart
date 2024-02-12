// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'doctorcard2_item_model.dart';/// This class defines the variables used in the [orders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrdersModel extends Equatable {OrdersModel({this.doctorcard2ItemList = const []}) {  }

List<Doctorcard2ItemModel> doctorcard2ItemList;

OrdersModel copyWith({List<Doctorcard2ItemModel>? doctorcard2ItemList}) { return OrdersModel(
doctorcard2ItemList : doctorcard2ItemList ?? this.doctorcard2ItemList,
); } 
@override List<Object?> get props => [doctorcard2ItemList];
 }
