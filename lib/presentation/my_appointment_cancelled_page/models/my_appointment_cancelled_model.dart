// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'appointmentcard_item_model.dart';/// This class defines the variables used in the [my_appointment_cancelled_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAppointmentCancelledModel extends Equatable {MyAppointmentCancelledModel({this.appointmentcardItemList = const []}) {  }

List<AppointmentcardItemModel> appointmentcardItemList;

MyAppointmentCancelledModel copyWith({List<AppointmentcardItemModel>? appointmentcardItemList}) { return MyAppointmentCancelledModel(
appointmentcardItemList : appointmentcardItemList ?? this.appointmentcardItemList,
); } 
@override List<Object?> get props => [appointmentcardItemList];
 }
