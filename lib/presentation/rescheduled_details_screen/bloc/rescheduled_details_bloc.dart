import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/datetime_item_model.dart';import 'package:aayan_mateen_s_application1/presentation/rescheduled_details_screen/models/rescheduled_details_model.dart';part 'rescheduled_details_event.dart';part 'rescheduled_details_state.dart';/// A bloc that manages the state of a RescheduledDetails according to the event that is dispatched to it.
class RescheduledDetailsBloc extends Bloc<RescheduledDetailsEvent, RescheduledDetailsState> {RescheduledDetailsBloc(RescheduledDetailsState initialState) : super(initialState) { on<RescheduledDetailsInitialEvent>(_onInitialize); }

_onInitialize(RescheduledDetailsInitialEvent event, Emitter<RescheduledDetailsState> emit, ) async  { emit(state.copyWith(rescheduledDetailsModelObj: state.rescheduledDetailsModelObj?.copyWith(datetimeItemList: fillDatetimeItemList()))); } 
List<DatetimeItemModel> fillDatetimeItemList() { return [DatetimeItemModel(calendar: ImageConstant.imgCalendar, userName: "Date & Time", date: "Wednesday, 08 May 2023", time: "08.30 AM")]; } 
 }
