import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/add_payment_method_screen/models/add_payment_method_model.dart';part 'add_payment_method_event.dart';part 'add_payment_method_state.dart';/// A bloc that manages the state of a AddPaymentMethod according to the event that is dispatched to it.
class AddPaymentMethodBloc extends Bloc<AddPaymentMethodEvent, AddPaymentMethodState> {AddPaymentMethodBloc(AddPaymentMethodState initialState) : super(initialState) { on<AddPaymentMethodInitialEvent>(_onInitialize); }

_onInitialize(AddPaymentMethodInitialEvent event, Emitter<AddPaymentMethodState> emit, ) async  { emit(state.copyWith(nameontheCardController: TextEditingController())); } 
 }
