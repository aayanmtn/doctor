import '../../../core/app_export.dart';/// This class is used in the [doctorcard1_item_widget] screen.
class Doctorcard1ItemModel {Doctorcard1ItemModel({this.doctorImage, this.doctorName, this.doctorSpecialty, this.appointmentDate, this.text, this.appointmentTime, this.id, }) { doctorImage = doctorImage  ?? ImageConstant.imgImage73x73;doctorName = doctorName  ?? "Dr. Randy Wigham";doctorSpecialty = doctorSpecialty  ?? "General Medical Checkup";appointmentDate = appointmentDate  ?? "Wed, 17 May";text = text  ?? "|";appointmentTime = appointmentTime  ?? "08.30 AM";id = id  ?? ""; }

String? doctorImage;

String? doctorName;

String? doctorSpecialty;

String? appointmentDate;

String? text;

String? appointmentTime;

String? id;

 }
