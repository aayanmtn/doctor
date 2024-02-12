import '../../../core/app_export.dart';/// This class is used in the [doctorcard2_item_widget] screen.
class Doctorcard2ItemModel {Doctorcard2ItemModel({this.medicineName, this.discountPercentage, this.appointmentDate, this.text, this.appointmentTime, this.id, }) { medicineName = medicineName  ?? "Medicine";discountPercentage = discountPercentage  ?? "Discount 15%";appointmentDate = appointmentDate  ?? "Wed, 17 May";text = text  ?? "|";appointmentTime = appointmentTime  ?? "08.30 AM";id = id  ?? ""; }

String? medicineName;

String? discountPercentage;

String? appointmentDate;

String? text;

String? appointmentTime;

String? id;

 }
