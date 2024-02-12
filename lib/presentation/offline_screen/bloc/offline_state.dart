// ignore_for_file: must_be_immutable

part of 'offline_bloc.dart';

/// Represents the state of Offline in the application.
class OfflineState extends Equatable {
  OfflineState({this.offlineModelObj});

  OfflineModel? offlineModelObj;

  @override
  List<Object?> get props => [
        offlineModelObj,
      ];
  OfflineState copyWith({OfflineModel? offlineModelObj}) {
    return OfflineState(
      offlineModelObj: offlineModelObj ?? this.offlineModelObj,
    );
  }
}
