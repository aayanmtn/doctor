// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userprofile3_item_model.dart';import '../../../core/app_export.dart';import 'userprofile4_item_model.dart';/// This class defines the variables used in the [nearby_pharmacy_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NearbyPharmacyModel extends Equatable {NearbyPharmacyModel({this.userprofile3ItemList = const [], this.userprofile4ItemList = const [], }) {  }

List<Userprofile3ItemModel> userprofile3ItemList;

List<Userprofile4ItemModel> userprofile4ItemList;

NearbyPharmacyModel copyWith({List<Userprofile3ItemModel>? userprofile3ItemList, List<Userprofile4ItemModel>? userprofile4ItemList, }) { return NearbyPharmacyModel(
userprofile3ItemList : userprofile3ItemList ?? this.userprofile3ItemList,
userprofile4ItemList : userprofile4ItemList ?? this.userprofile4ItemList,
); } 
@override List<Object?> get props => [userprofile3ItemList,userprofile4ItemList];
 }
