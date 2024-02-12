// ignore_for_file: must_be_immutable

part of 'search_doctors_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchDoctorsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchDoctorsOneEvent extends Equatable {}

/// Event that is dispatched when the SearchDoctorsOne widget is first created.
class SearchDoctorsOneInitialEvent extends SearchDoctorsOneEvent {
  @override
  List<Object?> get props => [];
}
