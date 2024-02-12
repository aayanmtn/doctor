// ignore_for_file: must_be_immutable

part of 'productdetails_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Productdetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductdetailsEvent extends Equatable {}

/// Event that is dispatched when the Productdetails widget is first created.
class ProductdetailsInitialEvent extends ProductdetailsEvent {
  @override
  List<Object?> get props => [];
}
