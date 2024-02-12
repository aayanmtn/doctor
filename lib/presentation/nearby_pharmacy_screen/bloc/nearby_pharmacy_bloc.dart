import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/userprofile3_item_model.dart';import '../models/userprofile4_item_model.dart';import 'package:aayan_mateen_s_application1/presentation/nearby_pharmacy_screen/models/nearby_pharmacy_model.dart';part 'nearby_pharmacy_event.dart';part 'nearby_pharmacy_state.dart';/// A bloc that manages the state of a NearbyPharmacy according to the event that is dispatched to it.
class NearbyPharmacyBloc extends Bloc<NearbyPharmacyEvent, NearbyPharmacyState> {NearbyPharmacyBloc(NearbyPharmacyState initialState) : super(initialState) { on<NearbyPharmacyInitialEvent>(_onInitialize); }

List<Userprofile3ItemModel> fillUserprofile3ItemList() { return List.generate(4, (index) => Userprofile3ItemModel()); } 
List<Userprofile4ItemModel> fillUserprofile4ItemList() { return [Userprofile4ItemModel(titleText: "Ab")]; } 
_onInitialize(NearbyPharmacyInitialEvent event, Emitter<NearbyPharmacyState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(nearbyPharmacyModelObj: state.nearbyPharmacyModelObj?.copyWith(userprofile3ItemList: fillUserprofile3ItemList(), userprofile4ItemList: fillUserprofile4ItemList()))); } 
 }
