// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [whatshouldiexpect_item_widget] screen.
class WhatshouldiexpectItemModel extends Equatable {WhatshouldiexpectItemModel({this.isSelected}) { isSelected = isSelected  ?? false; }

bool? isSelected;

WhatshouldiexpectItemModel copyWith({bool? isSelected}) { return WhatshouldiexpectItemModel(
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [isSelected];
 }
