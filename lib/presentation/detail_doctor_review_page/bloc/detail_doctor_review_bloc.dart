import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/detail_doctor_review_page/models/detail_doctor_review_model.dart';
part 'detail_doctor_review_event.dart';
part 'detail_doctor_review_state.dart';

/// A bloc that manages the state of a DetailDoctorReview according to the event that is dispatched to it.
class DetailDoctorReviewBloc
    extends Bloc<DetailDoctorReviewEvent, DetailDoctorReviewState> {
  DetailDoctorReviewBloc(DetailDoctorReviewState initialState)
      : super(initialState) {
    on<DetailDoctorReviewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailDoctorReviewInitialEvent event,
    Emitter<DetailDoctorReviewState> emit,
  ) async {}
}
