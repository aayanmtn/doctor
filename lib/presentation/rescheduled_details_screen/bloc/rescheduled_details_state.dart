// ignore_for_file: must_be_immutable

part of 'rescheduled_details_bloc.dart';

/// Represents the state of RescheduledDetails in the application.
class RescheduledDetailsState extends Equatable {
  RescheduledDetailsState({this.rescheduledDetailsModelObj});

  RescheduledDetailsModel? rescheduledDetailsModelObj;

  @override
  List<Object?> get props => [
        rescheduledDetailsModelObj,
      ];
  RescheduledDetailsState copyWith(
      {RescheduledDetailsModel? rescheduledDetailsModelObj}) {
    return RescheduledDetailsState(
      rescheduledDetailsModelObj:
          rescheduledDetailsModelObj ?? this.rescheduledDetailsModelObj,
    );
  }
}
