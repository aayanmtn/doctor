// ignore_for_file: must_be_immutable

part of 'productdetails_bloc.dart';

/// Represents the state of Productdetails in the application.
class ProductdetailsState extends Equatable {
  ProductdetailsState({
    this.sliderIndex = 0,
    this.productdetailsModelObj,
  });

  ProductdetailsModel? productdetailsModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productdetailsModelObj,
      ];
  ProductdetailsState copyWith({
    int? sliderIndex,
    ProductdetailsModel? productdetailsModelObj,
  }) {
    return ProductdetailsState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productdetailsModelObj:
          productdetailsModelObj ?? this.productdetailsModelObj,
    );
  }
}
