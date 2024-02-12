// ignore_for_file: must_be_immutable

part of 'detail_doctor_about_me_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailDoctorAboutMe widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailDoctorAboutMeEvent extends Equatable {}

/// Event that is dispatched when the DetailDoctorAboutMe widget is first created.
class DetailDoctorAboutMeInitialEvent extends DetailDoctorAboutMeEvent {
  @override
  List<Object?> get props => [];
}
