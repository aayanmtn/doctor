import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userImage2, this.userName, this.userSpecialty, this.id, }) { userImage2 = userImage2  ?? ImageConstant.imgImage266x66;userName = userName  ?? "Carnegie Mondover";userSpecialty = userSpecialty  ?? "Orthopaedics";id = id  ?? ""; }

String? userImage2;

String? userName;

String? userSpecialty;

String? id;

 }
