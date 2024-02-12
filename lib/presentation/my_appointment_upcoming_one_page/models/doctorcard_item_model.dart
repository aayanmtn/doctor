import '../../../core/app_export.dart';/// This class is used in the [doctorcard_item_widget] screen.
class DoctorcardItemModel {DoctorcardItemModel({this.patientImage, this.patientName, this.patientIssue, this.appointmentDate, this.text, this.appointmentTime, this.id, }) { patientImage = patientImage  ?? ImageConstant.imgImage73x73;patientName = patientName  ?? "Patient Ali";patientIssue = patientIssue  ?? "Gyno Issue";appointmentDate = appointmentDate  ?? "Wed, 17 May";text = text  ?? "|";appointmentTime = appointmentTime  ?? "08.30 AM";id = id  ?? ""; }

String? patientImage;

String? patientName;

String? patientIssue;

String? appointmentDate;

String? text;

String? appointmentTime;

String? id;

 }
