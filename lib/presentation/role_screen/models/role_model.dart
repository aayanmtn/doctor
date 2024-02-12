// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [role_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RoleModel extends Equatable {RoleModel({this.radioList = const []}) {  }

List<String> radioList;

RoleModel copyWith({List<String>? radioList}) { return RoleModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
