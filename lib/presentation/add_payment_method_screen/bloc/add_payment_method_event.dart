// ignore_for_file: must_be_immutable

part of 'add_payment_method_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddPaymentMethod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddPaymentMethodEvent extends Equatable {}

/// Event that is dispatched when the AddPaymentMethod widget is first created.
class AddPaymentMethodInitialEvent extends AddPaymentMethodEvent {
  @override
  List<Object?> get props => [];
}
