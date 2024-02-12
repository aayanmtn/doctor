import '../models/dynamicview_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamicviewItemWidget extends StatelessWidget {
  DynamicviewItemWidget(
    this.dynamicviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamicviewItemModel dynamicviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        decoration: AppDecoration.primaryBlue.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 11.v,
                bottom: 49.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 77.v,
                    width: 142.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "lbl_upto".tr.toUpperCase(),
                              style: CustomTextStyles
                                  .labelLargeBeVietnamProWhiteA700,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 77.v,
                            width: 142.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text(
                                      "lbl_80".tr.toUpperCase(),
                                      style: CustomTextStyles
                                          .displayMediumBeVietnamProWhiteA700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: 38.h,
                                      bottom: 18.v,
                                    ),
                                    child: Text(
                                      "lbl_offer".tr.toUpperCase(),
                                      style: CustomTextStyles
                                          .labelMediumBeVietnamProWhiteA700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "msg_on_health_products".tr,
                                    style: CustomTextStyles
                                        .titleSmallBeVietnamProWhiteA700Bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  CustomOutlinedButton(
                    height: 35.v,
                    width: 103.h,
                    text: "lbl_shop_now".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.outlineWhiteA,
                    buttonTextStyle: CustomTextStyles.labelLargeLatoWhiteA700,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 33.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 15.v,
                    width: 30.h,
                    margin: EdgeInsets.only(left: 37.h),
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.32),
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    height: 132.v,
                    width: 189.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 131.adaptSize,
                            width: 131.adaptSize,
                            margin: EdgeInsets.only(right: 7.h),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700.withOpacity(0.32),
                              borderRadius: BorderRadius.circular(
                                65.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage294x189,
                          height: 94.v,
                          width: 189.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
