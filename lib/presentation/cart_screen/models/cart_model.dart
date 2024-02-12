// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'cartitem1_item_model.dart';/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel extends Equatable {CartModel({this.cartitem1ItemList = const []}) {  }

List<Cartitem1ItemModel> cartitem1ItemList;

CartModel copyWith({List<Cartitem1ItemModel>? cartitem1ItemList}) { return CartModel(
cartitem1ItemList : cartitem1ItemList ?? this.cartitem1ItemList,
); } 
@override List<Object?> get props => [cartitem1ItemList];
 }
