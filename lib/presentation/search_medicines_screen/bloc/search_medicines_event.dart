// ignore_for_file: must_be_immutable

part of 'search_medicines_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchMedicines widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchMedicinesEvent extends Equatable {}

/// Event that is dispatched when the SearchMedicines widget is first created.
class SearchMedicinesInitialEvent extends SearchMedicinesEvent {
  @override
  List<Object?> get props => [];
}
