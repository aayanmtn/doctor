// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'experiencesection_item_model.dart';/// This class defines the variables used in the [detail_doctor_about_me_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailDoctorAboutMeModel extends Equatable {DetailDoctorAboutMeModel({this.experiencesectionItemList = const []}) {  }

List<ExperiencesectionItemModel> experiencesectionItemList;

DetailDoctorAboutMeModel copyWith({List<ExperiencesectionItemModel>? experiencesectionItemList}) { return DetailDoctorAboutMeModel(
experiencesectionItemList : experiencesectionItemList ?? this.experiencesectionItemList,
); } 
@override List<Object?> get props => [experiencesectionItemList];
 }
