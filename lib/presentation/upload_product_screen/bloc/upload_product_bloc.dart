import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/addpatient_item_model.dart';import 'package:aayan_mateen_s_application1/presentation/upload_product_screen/models/upload_product_model.dart';part 'upload_product_event.dart';part 'upload_product_state.dart';/// A bloc that manages the state of a UploadProduct according to the event that is dispatched to it.
class UploadProductBloc extends Bloc<UploadProductEvent, UploadProductState> {UploadProductBloc(UploadProductState initialState) : super(initialState) { on<UploadProductInitialEvent>(_onInitialize); }

List<AddpatientItemModel> fillAddpatientItemList() { return [AddpatientItemModel(addImage: ImageConstant.imgPlusIndigoA400)]; } 
_onInitialize(UploadProductInitialEvent event, Emitter<UploadProductState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), formController: TextEditingController())); emit(state.copyWith(uploadProductModelObj: state.uploadProductModelObj?.copyWith(addpatientItemList: fillAddpatientItemList()))); } 
 }
