// ignore_for_file: must_be_immutable

part of 'search_doctors_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchDoctors widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchDoctorsEvent extends Equatable {}

/// Event that is dispatched when the SearchDoctors widget is first created.
class SearchDoctorsInitialEvent extends SearchDoctorsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SearchDoctorsEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
