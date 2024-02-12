import '../../../core/app_export.dart';/// This class is used in the [experiencesection_item_widget] screen.
class ExperiencesectionItemModel {ExperiencesectionItemModel({this.userImage, this.yrsCounter, this.experience, this.id, }) { userImage = userImage  ?? ImageConstant.imgSettingsRed200;yrsCounter = yrsCounter  ?? "10 Yrs";experience = experience  ?? "Experience";id = id  ?? ""; }

String? userImage;

String? yrsCounter;

String? experience;

String? id;

 }
