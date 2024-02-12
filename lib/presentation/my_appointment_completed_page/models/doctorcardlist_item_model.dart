import '../../../core/app_export.dart';/// This class is used in the [doctorcardlist_item_widget] screen.
class DoctorcardlistItemModel {DoctorcardlistItemModel({this.appointmentApproved, this.appointmentDate, this.text, this.appointmentTime, this.image, this.patientName, this.patientType, this.id, }) { appointmentApproved = appointmentApproved  ?? "Appointment Approved";appointmentDate = appointmentDate  ?? "Wed, 17 May";text = text  ?? "|";appointmentTime = appointmentTime  ?? "08.30 AM";image = image  ?? ImageConstant.imgImage75x75;patientName = patientName  ?? "Patient Ali";patientType = patientType  ?? "Gyno patient";id = id  ?? ""; }

String? appointmentApproved;

String? appointmentDate;

String? text;

String? appointmentTime;

String? image;

String? patientName;

String? patientType;

String? id;

 }
