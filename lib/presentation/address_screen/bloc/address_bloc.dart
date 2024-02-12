import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/address_screen/models/address_model.dart';part 'address_event.dart';part 'address_state.dart';/// A bloc that manages the state of a Address according to the event that is dispatched to it.
class AddressBloc extends Bloc<AddressEvent, AddressState> {AddressBloc(AddressState initialState) : super(initialState) { on<AddressInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<AddressState> emit, ) { emit(state.copyWith(checkBoxSaveShippingAddress: event.value)); } 
_onInitialize(AddressInitialEvent event, Emitter<AddressState> emit, ) async  { emit(state.copyWith(editTextFullNameController: TextEditingController(), editTextEmailAddressController: TextEditingController(), editTextPhoneNumberController: TextEditingController(), editTextAddressController: TextEditingController(), editTextZipCodeController: TextEditingController(), cityController: TextEditingController(), checkBoxSaveShippingAddress: false)); } 
 }
