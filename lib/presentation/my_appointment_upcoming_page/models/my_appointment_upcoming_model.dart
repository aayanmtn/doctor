// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'doctorcard1_item_model.dart';/// This class defines the variables used in the [my_appointment_upcoming_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAppointmentUpcomingModel extends Equatable {MyAppointmentUpcomingModel({this.doctorcard1ItemList = const []}) {  }

List<Doctorcard1ItemModel> doctorcard1ItemList;

MyAppointmentUpcomingModel copyWith({List<Doctorcard1ItemModel>? doctorcard1ItemList}) { return MyAppointmentUpcomingModel(
doctorcard1ItemList : doctorcard1ItemList ?? this.doctorcard1ItemList,
); } 
@override List<Object?> get props => [doctorcard1ItemList];
 }
