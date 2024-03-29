// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [inbox_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InboxOneModel extends Equatable {InboxOneModel({this.userprofileItemList = const []}) {  }

List<UserprofileItemModel> userprofileItemList;

InboxOneModel copyWith({List<UserprofileItemModel>? userprofileItemList}) { return InboxOneModel(
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
); } 
@override List<Object?> get props => [userprofileItemList];
 }
