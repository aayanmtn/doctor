// ignore_for_file: must_be_immutable

part of 'cancel_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CancelPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CancelPopupEvent extends Equatable {}

/// Event that is dispatched when the CancelPopup widget is first created.
class CancelPopupInitialEvent extends CancelPopupEvent {
  @override
  List<Object?> get props => [];
}
