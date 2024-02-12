import '../../../core/app_export.dart';/// This class is used in the [datetime_item_widget] screen.
class DatetimeItemModel {DatetimeItemModel({this.calendar, this.userName, this.date, this.time, this.id, }) { calendar = calendar  ?? ImageConstant.imgCalendar;userName = userName  ?? "Date & Time";date = date  ?? "Wednesday, 08 May 2023";time = time  ?? "08.30 AM";id = id  ?? ""; }

String? calendar;

String? userName;

String? date;

String? time;

String? id;

 }
