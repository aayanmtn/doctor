// ignore_for_file: must_be_immutable

part of 'detail_doctor_review_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailDoctorReview widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailDoctorReviewEvent extends Equatable {}

/// Event that is dispatched when the DetailDoctorReview widget is first created.
class DetailDoctorReviewInitialEvent extends DetailDoctorReviewEvent {
  @override
  List<Object?> get props => [];
}
