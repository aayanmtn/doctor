// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'doctorcardlist1_item_model.dart';/// This class defines the variables used in the [my_appointment_completed_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAppointmentCompletedOneModel extends Equatable {MyAppointmentCompletedOneModel({this.doctorcardlist1ItemList = const []}) {  }

List<Doctorcardlist1ItemModel> doctorcardlist1ItemList;

MyAppointmentCompletedOneModel copyWith({List<Doctorcardlist1ItemModel>? doctorcardlist1ItemList}) { return MyAppointmentCompletedOneModel(
doctorcardlist1ItemList : doctorcardlist1ItemList ?? this.doctorcardlist1ItemList,
); } 
@override List<Object?> get props => [doctorcardlist1ItemList];
 }
