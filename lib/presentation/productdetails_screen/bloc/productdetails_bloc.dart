import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/widget_item_model.dart';import 'package:aayan_mateen_s_application1/presentation/productdetails_screen/models/productdetails_model.dart';part 'productdetails_event.dart';part 'productdetails_state.dart';/// A bloc that manages the state of a Productdetails according to the event that is dispatched to it.
class ProductdetailsBloc extends Bloc<ProductdetailsEvent, ProductdetailsState> {ProductdetailsBloc(ProductdetailsState initialState) : super(initialState) { on<ProductdetailsInitialEvent>(_onInitialize); }

List<WidgetItemModel> fillWidgetItemList() { return List.generate(1, (index) => WidgetItemModel()); } 
_onInitialize(ProductdetailsInitialEvent event, Emitter<ProductdetailsState> emit, ) async  { emit(state.copyWith(sliderIndex: 0)); emit(state.copyWith(productdetailsModelObj: state.productdetailsModelObj?.copyWith(widgetItemList: fillWidgetItemList()))); } 
 }
