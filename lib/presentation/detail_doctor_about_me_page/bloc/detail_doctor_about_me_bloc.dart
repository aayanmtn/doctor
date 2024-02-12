import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/experiencesection_item_model.dart';
import 'package:aayan_mateen_s_application1/presentation/detail_doctor_about_me_page/models/detail_doctor_about_me_model.dart';
part 'detail_doctor_about_me_event.dart';
part 'detail_doctor_about_me_state.dart';

/// A bloc that manages the state of a DetailDoctorAboutMe according to the event that is dispatched to it.
class DetailDoctorAboutMeBloc
    extends Bloc<DetailDoctorAboutMeEvent, DetailDoctorAboutMeState> {
  DetailDoctorAboutMeBloc(DetailDoctorAboutMeState initialState)
      : super(initialState) {
    on<DetailDoctorAboutMeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailDoctorAboutMeInitialEvent event,
    Emitter<DetailDoctorAboutMeState> emit,
  ) async {
    emit(state.copyWith(
        detailDoctorAboutMeModelObj:
            state.detailDoctorAboutMeModelObj?.copyWith(
      experiencesectionItemList: fillExperiencesectionItemList(),
    )));
  }

  List<ExperiencesectionItemModel> fillExperiencesectionItemList() {
    return [
      ExperiencesectionItemModel(
          userImage: ImageConstant.imgSettingsRed200,
          yrsCounter: "10 Yrs",
          experience: "Experience")
    ];
  }
}
