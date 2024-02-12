// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [gendersection_item_widget] screen.
class GendersectionItemModel extends Equatable {GendersectionItemModel({this.male, this.isSelected, }) { male = male  ?? "Male";isSelected = isSelected  ?? false; }

String? male;

bool? isSelected;

GendersectionItemModel copyWith({String? male, bool? isSelected, }) { return GendersectionItemModel(
male : male ?? this.male,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [male,isSelected];
 }
