// ignore_for_file: must_be_immutable

part of 'walkthrough_two_bloc.dart';

/// Represents the state of WalkthroughTwo in the application.
class WalkthroughTwoState extends Equatable {
  WalkthroughTwoState({
    this.isSelectedSwitch = false,
    this.walkthroughTwoModelObj,
  });

  WalkthroughTwoModel? walkthroughTwoModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        walkthroughTwoModelObj,
      ];
  WalkthroughTwoState copyWith({
    bool? isSelectedSwitch,
    WalkthroughTwoModel? walkthroughTwoModelObj,
  }) {
    return WalkthroughTwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      walkthroughTwoModelObj:
          walkthroughTwoModelObj ?? this.walkthroughTwoModelObj,
    );
  }
}
