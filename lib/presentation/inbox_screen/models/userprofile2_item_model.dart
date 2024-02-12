import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.userImage, this.doctorName, this.doctorSpecialty, this.questionText, this.messageTime, this.id, }) { userImage = userImage  ?? ImageConstant.imgImage50x50;doctorName = doctorName  ?? "Dr. Randy Wigham";doctorSpecialty = doctorSpecialty  ?? "General Doctor | RSUD Gatot Subroto";questionText = questionText  ?? "Fine, I'll do a check. Does the patient have a history of certain diseases?";messageTime = messageTime  ?? "7:11 PM";id = id  ?? ""; }

String? userImage;

String? doctorName;

String? doctorSpecialty;

String? questionText;

String? messageTime;

String? id;

 }
