// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'phonenumber_item_model.dart';/// This class defines the variables used in the [search_doctors_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchDoctorsModel extends Equatable {SearchDoctorsModel({this.phonenumberItemList = const []}) {  }

List<PhonenumberItemModel> phonenumberItemList;

SearchDoctorsModel copyWith({List<PhonenumberItemModel>? phonenumberItemList}) { return SearchDoctorsModel(
phonenumberItemList : phonenumberItemList ?? this.phonenumberItemList,
); } 
@override List<Object?> get props => [phonenumberItemList];
 }
