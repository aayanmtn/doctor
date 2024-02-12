import '../models/appointmentcard_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppointmentcardItemWidget extends StatelessWidget {
  AppointmentcardItemWidget(
    this.appointmentcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AppointmentcardItemModel appointmentcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            decoration: AppDecoration.outlineGray,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointmentcardItemModelObj.appointmentStatus!,
                        style: CustomTextStyles.bodySmallRedA200,
                      ),
                      SizedBox(height: 6.v),
                      Opacity(
                        opacity: 0.8,
                        child: SizedBox(
                          width: 151.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                appointmentcardItemModelObj.appointmentDate!,
                                style: CustomTextStyles.labelLargeInter_1,
                              ),
                              Text(
                                appointmentcardItemModelObj.text!,
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                appointmentcardItemModelObj.appointmentTime!,
                                style: CustomTextStyles.labelLargeInter_1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDots,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 17.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: appointmentcardItemModelObj?.image,
                height: 75.adaptSize,
                width: 75.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
                margin: EdgeInsets.only(top: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  bottom: 32.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        appointmentcardItemModelObj.patientName!,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      appointmentcardItemModelObj.patientType!,
                      style: CustomTextStyles.labelLargeInter_1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
