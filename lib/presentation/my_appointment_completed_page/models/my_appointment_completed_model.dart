// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'doctorcardlist_item_model.dart';/// This class defines the variables used in the [my_appointment_completed_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAppointmentCompletedModel extends Equatable {MyAppointmentCompletedModel({this.doctorcardlistItemList = const []}) {  }

List<DoctorcardlistItemModel> doctorcardlistItemList;

MyAppointmentCompletedModel copyWith({List<DoctorcardlistItemModel>? doctorcardlistItemList}) { return MyAppointmentCompletedModel(
doctorcardlistItemList : doctorcardlistItemList ?? this.doctorcardlistItemList,
); } 
@override List<Object?> get props => [doctorcardlistItemList];
 }
