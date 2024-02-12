import '../../../core/app_export.dart';/// This class is used in the [appointmentcardlist_item_widget] screen.
class AppointmentcardlistItemModel {AppointmentcardlistItemModel({this.appointmentStatus, this.appointmentDate, this.text, this.appointmentTime, this.image, this.doctorName, this.doctorSpecialty, this.ratingValue, this.ratingCount, this.id, }) { appointmentStatus = appointmentStatus  ?? "Appointment cancelled";appointmentDate = appointmentDate  ?? "Wed, 17 May";text = text  ?? "|";appointmentTime = appointmentTime  ?? "08.30 AM";image = image  ?? ImageConstant.imgImage75x75;doctorName = doctorName  ?? "Dr. Randy Wigham";doctorSpecialty = doctorSpecialty  ?? "General Medical Checkup";ratingValue = ratingValue  ?? "4.8";ratingCount = ratingCount  ?? "(4,279 reviews)";id = id  ?? ""; }

String? appointmentStatus;

String? appointmentDate;

String? text;

String? appointmentTime;

String? image;

String? doctorName;

String? doctorSpecialty;

String? ratingValue;

String? ratingCount;

String? id;

 }
