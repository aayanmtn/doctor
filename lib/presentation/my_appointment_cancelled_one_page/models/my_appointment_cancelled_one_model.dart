// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'appointmentcardlist_item_model.dart';/// This class defines the variables used in the [my_appointment_cancelled_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAppointmentCancelledOneModel extends Equatable {MyAppointmentCancelledOneModel({this.appointmentcardlistItemList = const []}) {  }

List<AppointmentcardlistItemModel> appointmentcardlistItemList;

MyAppointmentCancelledOneModel copyWith({List<AppointmentcardlistItemModel>? appointmentcardlistItemList}) { return MyAppointmentCancelledOneModel(
appointmentcardlistItemList : appointmentcardlistItemList ?? this.appointmentcardlistItemList,
); } 
@override List<Object?> get props => [appointmentcardlistItemList];
 }
