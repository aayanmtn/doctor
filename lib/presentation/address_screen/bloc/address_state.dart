// ignore_for_file: must_be_immutable

part of 'address_bloc.dart';

/// Represents the state of Address in the application.
class AddressState extends Equatable {
  AddressState({
    this.editTextFullNameController,
    this.editTextEmailAddressController,
    this.editTextPhoneNumberController,
    this.editTextAddressController,
    this.editTextZipCodeController,
    this.cityController,
    this.checkBoxSaveShippingAddress = false,
    this.addressModelObj,
  });

  TextEditingController? editTextFullNameController;

  TextEditingController? editTextEmailAddressController;

  TextEditingController? editTextPhoneNumberController;

  TextEditingController? editTextAddressController;

  TextEditingController? editTextZipCodeController;

  TextEditingController? cityController;

  AddressModel? addressModelObj;

  bool checkBoxSaveShippingAddress;

  @override
  List<Object?> get props => [
        editTextFullNameController,
        editTextEmailAddressController,
        editTextPhoneNumberController,
        editTextAddressController,
        editTextZipCodeController,
        cityController,
        checkBoxSaveShippingAddress,
        addressModelObj,
      ];
  AddressState copyWith({
    TextEditingController? editTextFullNameController,
    TextEditingController? editTextEmailAddressController,
    TextEditingController? editTextPhoneNumberController,
    TextEditingController? editTextAddressController,
    TextEditingController? editTextZipCodeController,
    TextEditingController? cityController,
    bool? checkBoxSaveShippingAddress,
    AddressModel? addressModelObj,
  }) {
    return AddressState(
      editTextFullNameController:
          editTextFullNameController ?? this.editTextFullNameController,
      editTextEmailAddressController:
          editTextEmailAddressController ?? this.editTextEmailAddressController,
      editTextPhoneNumberController:
          editTextPhoneNumberController ?? this.editTextPhoneNumberController,
      editTextAddressController:
          editTextAddressController ?? this.editTextAddressController,
      editTextZipCodeController:
          editTextZipCodeController ?? this.editTextZipCodeController,
      cityController: cityController ?? this.cityController,
      checkBoxSaveShippingAddress:
          checkBoxSaveShippingAddress ?? this.checkBoxSaveShippingAddress,
      addressModelObj: addressModelObj ?? this.addressModelObj,
    );
  }
}
