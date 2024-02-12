// ignore_for_file: must_be_immutable

part of 'add_payment_method_bloc.dart';

/// Represents the state of AddPaymentMethod in the application.
class AddPaymentMethodState extends Equatable {
  AddPaymentMethodState({
    this.nameontheCardController,
    this.addPaymentMethodModelObj,
  });

  TextEditingController? nameontheCardController;

  AddPaymentMethodModel? addPaymentMethodModelObj;

  @override
  List<Object?> get props => [
        nameontheCardController,
        addPaymentMethodModelObj,
      ];
  AddPaymentMethodState copyWith({
    TextEditingController? nameontheCardController,
    AddPaymentMethodModel? addPaymentMethodModelObj,
  }) {
    return AddPaymentMethodState(
      nameontheCardController:
          nameontheCardController ?? this.nameontheCardController,
      addPaymentMethodModelObj:
          addPaymentMethodModelObj ?? this.addPaymentMethodModelObj,
    );
  }
}
