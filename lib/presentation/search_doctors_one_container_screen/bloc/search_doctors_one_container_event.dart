// ignore_for_file: must_be_immutable

part of 'search_doctors_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchDoctorsOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchDoctorsOneContainerEvent extends Equatable {}

/// Event that is dispatched when the SearchDoctorsOneContainer widget is first created.
class SearchDoctorsOneContainerInitialEvent
    extends SearchDoctorsOneContainerEvent {
  @override
  List<Object?> get props => [];
}
