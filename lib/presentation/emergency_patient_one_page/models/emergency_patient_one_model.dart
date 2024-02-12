// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:aayan_mateen_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [emergency_patient_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EmergencyPatientOneModel extends Equatable {EmergencyPatientOneModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

EmergencyPatientOneModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return EmergencyPatientOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
