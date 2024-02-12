import '../../../core/app_export.dart';/// This class is used in the [doctorcardlist1_item_widget] screen.
class Doctorcardlist1ItemModel {Doctorcardlist1ItemModel({this.appointmentDone, this.appointmentDate, this.text, this.appointmentTime, this.appointmentdone, this.doctorName, this.doctorSpecialty, this.rating, this.reviewCount, this.id, }) { appointmentDone = appointmentDone  ?? "Appointment done";appointmentDate = appointmentDate  ?? "Wed, 17 May";text = text  ?? "|";appointmentTime = appointmentTime  ?? "08.30 AM";appointmentdone = appointmentdone  ?? ImageConstant.imgImage75x75;doctorName = doctorName  ?? "Dr. Randy Wigham";doctorSpecialty = doctorSpecialty  ?? "General Medical Checkup";rating = rating  ?? "4.8";reviewCount = reviewCount  ?? "(4,279 reviews)";id = id  ?? ""; }

String? appointmentDone;

String? appointmentDate;

String? text;

String? appointmentTime;

String? appointmentdone;

String? doctorName;

String? doctorSpecialty;

String? rating;

String? reviewCount;

String? id;

 }
