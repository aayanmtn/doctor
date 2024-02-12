// ignore_for_file: must_be_immutable

part of 'upload_product_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UploadProduct widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UploadProductEvent extends Equatable {}

/// Event that is dispatched when the UploadProduct widget is first created.
class UploadProductInitialEvent extends UploadProductEvent {
  @override
  List<Object?> get props => [];
}
