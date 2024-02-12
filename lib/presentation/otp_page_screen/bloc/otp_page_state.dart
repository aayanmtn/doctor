// ignore_for_file: must_be_immutable

part of 'otp_page_bloc.dart';

/// Represents the state of OtpPage in the application.
class OtpPageState extends Equatable {
  OtpPageState({
    this.otpController,
    this.otpPageModelObj,
  });

  TextEditingController? otpController;

  OtpPageModel? otpPageModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpPageModelObj,
      ];
  OtpPageState copyWith({
    TextEditingController? otpController,
    OtpPageModel? otpPageModelObj,
  }) {
    return OtpPageState(
      otpController: otpController ?? this.otpController,
      otpPageModelObj: otpPageModelObj ?? this.otpPageModelObj,
    );
  }
}
