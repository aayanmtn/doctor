// ignore_for_file: must_be_immutable

part of 'detail_doctor_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailDoctorAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailDoctorAddressEvent extends Equatable {}

/// Event that is dispatched when the DetailDoctorAddress widget is first created.
class DetailDoctorAddressInitialEvent extends DetailDoctorAddressEvent {
  @override
  List<Object?> get props => [];
}
