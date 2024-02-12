import 'bloc/otp_page_bloc.dart';
import 'models/otp_page_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class OtpPageScreen extends StatelessWidget {
  const OtpPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpPageBloc>(
      create: (context) => OtpPageBloc(OtpPageState(
        otpPageModelObj: OtpPageModel(),
      ))
        ..add(OtpPageInitialEvent()),
      child: OtpPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 430.h,
          child: Column(
            children: [
              SizedBox(height: 96.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 117.v),
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMailSent,
                          height: 194.v,
                          width: 373.h,
                        ),
                        SizedBox(height: 42.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 80.h),
                            child: Text(
                              "msg_verification_code".tr,
                              style: CustomTextStyles.titleLargeBlack90001_1,
                            ),
                          ),
                        ),
                        Text(
                          "msg_confirm_with_code".tr,
                          style: CustomTextStyles.labelLargePoppinsGray60001,
                        ),
                        SizedBox(height: 74.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: BlocSelector<OtpPageBloc, OtpPageState,
                              TextEditingController?>(
                            selector: (state) => state.otpController,
                            builder: (context, otpController) {
                              return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 27.v),
                        Text(
                          "lbl_resend_code".tr,
                          style: CustomTextStyles.labelLargePoppinsPrimary,
                        ),
                        SizedBox(height: 146.v),
                        CustomElevatedButton(
                          height: 50.v,
                          text: "lbl_verify".tr,
                          margin: EdgeInsets.symmetric(horizontal: 6.h),
                          buttonStyle: CustomButtonStyles.fillBlueA,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
