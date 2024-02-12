// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [phonenumber_item_widget] screen.
class PhonenumberItemModel extends Equatable {PhonenumberItemModel({this.phoneNumber, this.isSelected, }) { phoneNumber = phoneNumber  ?? "+45 678 901 234";isSelected = isSelected  ?? false; }

String? phoneNumber;

bool? isSelected;

PhonenumberItemModel copyWith({String? phoneNumber, bool? isSelected, }) { return PhonenumberItemModel(
phoneNumber : phoneNumber ?? this.phoneNumber,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [phoneNumber,isSelected];
 }
