// ignore_for_file: must_be_immutable

part of 'upload_product_bloc.dart';

/// Represents the state of UploadProduct in the application.
class UploadProductState extends Equatable {
  UploadProductState({
    this.nameController,
    this.formController,
    this.uploadProductModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? formController;

  UploadProductModel? uploadProductModelObj;

  @override
  List<Object?> get props => [
        nameController,
        formController,
        uploadProductModelObj,
      ];
  UploadProductState copyWith({
    TextEditingController? nameController,
    TextEditingController? formController,
    UploadProductModel? uploadProductModelObj,
  }) {
    return UploadProductState(
      nameController: nameController ?? this.nameController,
      formController: formController ?? this.formController,
      uploadProductModelObj:
          uploadProductModelObj ?? this.uploadProductModelObj,
    );
  }
}
