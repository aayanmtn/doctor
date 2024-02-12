// ignore_for_file: must_be_immutable

part of 'detail_doctor_about_me_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailDoctorAboutMeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailDoctorAboutMeTabContainerEvent extends Equatable {}

/// Event that is dispatched when the DetailDoctorAboutMeTabContainer widget is first created.
class DetailDoctorAboutMeTabContainerInitialEvent
    extends DetailDoctorAboutMeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
