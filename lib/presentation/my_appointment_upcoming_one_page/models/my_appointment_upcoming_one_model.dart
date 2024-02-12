// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'doctorcard_item_model.dart';/// This class defines the variables used in the [my_appointment_upcoming_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAppointmentUpcomingOneModel extends Equatable {MyAppointmentUpcomingOneModel({this.doctorcardItemList = const []}) {  }

List<DoctorcardItemModel> doctorcardItemList;

MyAppointmentUpcomingOneModel copyWith({List<DoctorcardItemModel>? doctorcardItemList}) { return MyAppointmentUpcomingOneModel(
doctorcardItemList : doctorcardItemList ?? this.doctorcardItemList,
); } 
@override List<Object?> get props => [doctorcardItemList];
 }
