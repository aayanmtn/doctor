import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_container_screen/models/search_doctors_one_container_model.dart';part 'search_doctors_one_container_event.dart';part 'search_doctors_one_container_state.dart';/// A bloc that manages the state of a SearchDoctorsOneContainer according to the event that is dispatched to it.
class SearchDoctorsOneContainerBloc extends Bloc<SearchDoctorsOneContainerEvent, SearchDoctorsOneContainerState> {SearchDoctorsOneContainerBloc(SearchDoctorsOneContainerState initialState) : super(initialState) { on<SearchDoctorsOneContainerInitialEvent>(_onInitialize); }

_onInitialize(SearchDoctorsOneContainerInitialEvent event, Emitter<SearchDoctorsOneContainerState> emit, ) async  {  } 
 }
