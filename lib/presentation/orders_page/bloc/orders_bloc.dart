import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/doctorcard2_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/orders_page/models/orders_model.dart';
part 'orders_event.dart';
part 'orders_state.dart';

/// A bloc that manages the state of a Orders according to the event that is dispatched to it.
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc(OrdersState initialState) : super(initialState) {
    on<OrdersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrdersInitialEvent event,
    Emitter<OrdersState> emit,
  ) async {
    emit(state.copyWith(
        ordersModelObj: state.ordersModelObj?.copyWith(
      doctorcard2ItemList: fillDoctorcard2ItemList(),
    )));
  }

  List<Doctorcard2ItemModel> fillDoctorcard2ItemList() {
    return [
      Doctorcard2ItemModel(
          medicineName: "Medicine",
          discountPercentage: "Discount 15%",
          appointmentDate: "Wed, 17 May",
          text: "|",
          appointmentTime: "08.30 AM")
    ];
  }
}
