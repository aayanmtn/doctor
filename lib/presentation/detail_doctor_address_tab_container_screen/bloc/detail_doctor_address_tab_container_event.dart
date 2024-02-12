// ignore_for_file: must_be_immutable

part of 'detail_doctor_address_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailDoctorAddressTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailDoctorAddressTabContainerEvent extends Equatable {}

/// Event that is dispatched when the DetailDoctorAddressTabContainer widget is first created.
class DetailDoctorAddressTabContainerInitialEvent
    extends DetailDoctorAddressTabContainerEvent {
  @override
  List<Object?> get props => [];
}
