// ignore_for_file: must_be_immutable

part of 'finish_order_bloc.dart';

/// Represents the state of FinishOrder in the application.
class FinishOrderState extends Equatable {
  FinishOrderState({this.finishOrderModelObj});

  FinishOrderModel? finishOrderModelObj;

  @override
  List<Object?> get props => [
        finishOrderModelObj,
      ];
  FinishOrderState copyWith({FinishOrderModel? finishOrderModelObj}) {
    return FinishOrderState(
      finishOrderModelObj: finishOrderModelObj ?? this.finishOrderModelObj,
    );
  }
}
