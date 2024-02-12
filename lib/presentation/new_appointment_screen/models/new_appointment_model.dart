// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:aayan_mateen_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';import 'am_item_model.dart';import 'gendersection_item_model.dart';/// This class defines the variables used in the [new_appointment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewAppointmentModel extends Equatable {NewAppointmentModel({this.dropdownItemList = const [], this.amItemList = const [], this.dropdownItemList1 = const [], this.gendersectionItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<AmItemModel> amItemList;

List<SelectionPopupModel> dropdownItemList1;

List<GendersectionItemModel> gendersectionItemList;

NewAppointmentModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<AmItemModel>? amItemList, List<SelectionPopupModel>? dropdownItemList1, List<GendersectionItemModel>? gendersectionItemList, }) { return NewAppointmentModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
amItemList : amItemList ?? this.amItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
gendersectionItemList : gendersectionItemList ?? this.gendersectionItemList,
); } 
@override List<Object?> get props => [dropdownItemList,amItemList,dropdownItemList1,gendersectionItemList];
 }
