// ignore_for_file: must_be_immutable

part of 'nearby_pharmacy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NearbyPharmacy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NearbyPharmacyEvent extends Equatable {}

/// Event that is dispatched when the NearbyPharmacy widget is first created.
class NearbyPharmacyInitialEvent extends NearbyPharmacyEvent {
  @override
  List<Object?> get props => [];
}
