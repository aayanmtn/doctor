// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'addpatient_item_model.dart';/// This class defines the variables used in the [upload_product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UploadProductModel extends Equatable {UploadProductModel({this.addpatientItemList = const []}) {  }

List<AddpatientItemModel> addpatientItemList;

UploadProductModel copyWith({List<AddpatientItemModel>? addpatientItemList}) { return UploadProductModel(
addpatientItemList : addpatientItemList ?? this.addpatientItemList,
); } 
@override List<Object?> get props => [addpatientItemList];
 }
