import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/cartitem1_item_model.dart';import 'package:aayan_mateen_s_application1/presentation/cart_screen/models/cart_model.dart';part 'cart_event.dart';part 'cart_state.dart';/// A bloc that manages the state of a Cart according to the event that is dispatched to it.
class CartBloc extends Bloc<CartEvent, CartState> {CartBloc(CartState initialState) : super(initialState) { on<CartInitialEvent>(_onInitialize); }

_onInitialize(CartInitialEvent event, Emitter<CartState> emit, ) async  { emit(state.copyWith(cartModelObj: state.cartModelObj?.copyWith(cartitem1ItemList: fillCartitem1ItemList()))); } 
List<Cartitem1ItemModel> fillCartitem1ItemList() { return [Cartitem1ItemModel(image: ImageConstant.imgImage134, title: "Sugar free gold", description: "bottle of 500 pellets", price: "Rs.25", quantity: "1"), Cartitem1ItemModel(image: ImageConstant.imgImage135, title: "Sugar free gold", description: "bottle of 500 pellets", price: "Rs.18", quantity: "1")]; } 
 }
