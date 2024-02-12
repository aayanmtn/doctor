// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [search_doctors_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchDoctorsOneModel extends Equatable {SearchDoctorsOneModel({this.userprofile1ItemList = const []}) {  }

List<Userprofile1ItemModel> userprofile1ItemList;

SearchDoctorsOneModel copyWith({List<Userprofile1ItemModel>? userprofile1ItemList}) { return SearchDoctorsOneModel(
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
); } 
@override List<Object?> get props => [userprofile1ItemList];
 }
