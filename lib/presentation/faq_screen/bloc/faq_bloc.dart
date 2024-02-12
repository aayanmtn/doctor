import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/whatshouldiexpect_item_model.dart';import 'package:aayan_mateen_s_application1/presentation/faq_screen/models/faq_model.dart';part 'faq_event.dart';part 'faq_state.dart';/// A bloc that manages the state of a Faq according to the event that is dispatched to it.
class FaqBloc extends Bloc<FaqEvent, FaqState> {FaqBloc(FaqState initialState) : super(initialState) { on<FaqInitialEvent>(_onInitialize); on<UpdateExpandableListEvent>(_updateExpandableList); }

_onInitialize(FaqInitialEvent event, Emitter<FaqState> emit, ) async  { emit(state.copyWith(faqModelObj: state.faqModelObj?.copyWith(whatshouldiexpectItemList: fillWhatshouldiexpectItemList()))); } 
_updateExpandableList(UpdateExpandableListEvent event, Emitter<FaqState> emit, ) { List<WhatshouldiexpectItemModel> newList = List<WhatshouldiexpectItemModel>.from(state.faqModelObj!.whatshouldiexpectItemList); newList[event.index] = newList[event.index].copyWith(isSelected: event.isSelected); emit(state.copyWith(faqModelObj: state.faqModelObj?.copyWith(whatshouldiexpectItemList: newList))); } 
List<WhatshouldiexpectItemModel> fillWhatshouldiexpectItemList() { return List.generate(8, (index) => WhatshouldiexpectItemModel()); } 
 }
