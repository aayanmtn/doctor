import 'bloc/custom_appointment_time_bloc.dart';
import 'models/custom_appointment_time_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomAppointmentTimeScreen extends StatelessWidget {
  const CustomAppointmentTimeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CustomAppointmentTimeBloc>(
      create: (context) => CustomAppointmentTimeBloc(CustomAppointmentTimeState(
        customAppointmentTimeModelObj: CustomAppointmentTimeModel(),
      ))
        ..add(CustomAppointmentTimeInitialEvent()),
      child: CustomAppointmentTimeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomAppointmentTimeBloc, CustomAppointmentTimeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 360.h,
              padding: EdgeInsets.symmetric(
                horizontal: 35.h,
                vertical: 7.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 24.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 73.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 34.h,
                      vertical: 32.v,
                    ),
                    decoration: AppDecoration.primaryBlue.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder71,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Container(
                          padding: EdgeInsets.all(12.h),
                          decoration: AppDecoration.white.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl_9_00".tr,
                                style: CustomTextStyles.titleLargeInterPrimary,
                              ),
                              Text(
                                "lbl_am".tr,
                                style: CustomTextStyles.titleLargeInterPrimary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Text(
                    "msg_appointment_set".tr,
                    style: CustomTextStyles.titleLargeBlack90001,
                  ),
                  SizedBox(height: 23.v),
                  Container(
                    width: 269.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      right: 9.h,
                    ),
                    child: Text(
                      "msg_appointment_with".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          CustomTextStyles.bodyMediumPoppinsGray90003.copyWith(
                        height: 1.71,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildAcceptAppointment(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAcceptAppointment(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_accept_appointment".tr,
      margin: EdgeInsets.only(
        left: 32.h,
        right: 32.h,
        bottom: 32.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL26,
      buttonTextStyle: CustomTextStyles.titleMediumPoppinsWhiteA700SemiBold,
    );
  }
}
