import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/cartempty_screen/models/cartempty_model.dart';part 'cartempty_event.dart';part 'cartempty_state.dart';/// A bloc that manages the state of a Cartempty according to the event that is dispatched to it.
class CartemptyBloc extends Bloc<CartemptyEvent, CartemptyState> {CartemptyBloc(CartemptyState initialState) : super(initialState) { on<CartemptyInitialEvent>(_onInitialize); }

_onInitialize(CartemptyInitialEvent event, Emitter<CartemptyState> emit, ) async  {  } 
 }
