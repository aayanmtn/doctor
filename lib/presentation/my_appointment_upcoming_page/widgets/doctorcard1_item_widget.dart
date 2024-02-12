import '../models/doctorcard1_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Doctorcard1ItemWidget extends StatelessWidget {
  Doctorcard1ItemWidget(
    this.doctorcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Doctorcard1ItemModel doctorcard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2.h),
            decoration: AppDecoration.outlineGray,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: doctorcard1ItemModelObj?.doctorImage,
                  height: 73.adaptSize,
                  width: 73.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(bottom: 22.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 17.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        doctorcard1ItemModelObj.doctorName!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        doctorcard1ItemModelObj.doctorSpecialty!,
                        style: CustomTextStyles.labelLargeInter,
                      ),
                      SizedBox(height: 10.v),
                      Opacity(
                        opacity: 0.8,
                        child: SizedBox(
                          width: 148.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                doctorcard1ItemModelObj.appointmentDate!,
                                style: CustomTextStyles.labelLargeInter,
                              ),
                              Text(
                                doctorcard1ItemModelObj.text!,
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                doctorcard1ItemModelObj.appointmentTime!,
                                style: CustomTextStyles.labelLargeInter,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgMessageText,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 68.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "msg_cancel_appointment".tr,
                  margin: EdgeInsets.only(right: 8.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 38.v,
                  text: "lbl_reschedule".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  buttonTextStyle: CustomTextStyles.labelLargeInterWhiteA700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
