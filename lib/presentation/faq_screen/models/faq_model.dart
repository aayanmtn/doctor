// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'whatshouldiexpect_item_model.dart';/// This class defines the variables used in the [faq_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FaqModel extends Equatable {FaqModel({this.whatshouldiexpectItemList = const []}) {  }

List<WhatshouldiexpectItemModel> whatshouldiexpectItemList;

FaqModel copyWith({List<WhatshouldiexpectItemModel>? whatshouldiexpectItemList}) { return FaqModel(
whatshouldiexpectItemList : whatshouldiexpectItemList ?? this.whatshouldiexpectItemList,
); } 
@override List<Object?> get props => [whatshouldiexpectItemList];
 }
