import '../models/doctorcardlist1_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Doctorcardlist1ItemWidget extends StatelessWidget {
  Doctorcardlist1ItemWidget(
    this.doctorcardlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Doctorcardlist1ItemModel doctorcardlist1ItemModelObj;

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
        mainAxisAlignment: MainAxisAlignment.center,
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
                        doctorcardlist1ItemModelObj.appointmentDone!,
                        style: CustomTextStyles.bodySmallGreenA700,
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
                                doctorcardlist1ItemModelObj.appointmentDate!,
                                style: CustomTextStyles.labelLargeInter_1,
                              ),
                              Text(
                                doctorcardlist1ItemModelObj.text!,
                                style: theme.textTheme.labelLarge,
                              ),
                              Text(
                                doctorcardlist1ItemModelObj.appointmentTime!,
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
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 69.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: doctorcardlist1ItemModelObj?.appointmentdone,
                  height: 75.adaptSize,
                  width: 75.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorcardlist1ItemModelObj.doctorName!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        doctorcardlist1ItemModelObj.doctorSpecialty!,
                        style: CustomTextStyles.labelLargeInter_1,
                      ),
                      SizedBox(height: 10.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              doctorcardlist1ItemModelObj.rating!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              doctorcardlist1ItemModelObj.reviewCount!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
