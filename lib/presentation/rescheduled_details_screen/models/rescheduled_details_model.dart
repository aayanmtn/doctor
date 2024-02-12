// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'datetime_item_model.dart';/// This class defines the variables used in the [rescheduled_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RescheduledDetailsModel extends Equatable {RescheduledDetailsModel({this.datetimeItemList = const []}) {  }

List<DatetimeItemModel> datetimeItemList;

RescheduledDetailsModel copyWith({List<DatetimeItemModel>? datetimeItemList}) { return RescheduledDetailsModel(
datetimeItemList : datetimeItemList ?? this.datetimeItemList,
); } 
@override List<Object?> get props => [datetimeItemList];
 }
