import '../models/userprofile4_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 174.h,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.v),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 102.v,
                  width: 101.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 16.v,
                            right: 71.h,
                          ),
                          padding: EdgeInsets.all(3.h),
                          decoration: AppDecoration.outlineBlack900014.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Container(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPhotoHere50x50,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              radius: BorderRadius.circular(
                                12.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSignalDeepOrangeA200,
                                      height: 10.v,
                                      width: 11.h,
                                      margin: EdgeInsets.only(
                                        top: 2.v,
                                        bottom: 1.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_52".tr,
                                              style: CustomTextStyles
                                                  .bodySmallPoppinsff3b566e,
                                            ),
                                            TextSpan(
                                              text: "lbl_0".tr,
                                              style: CustomTextStyles
                                                  .bodySmallPoppinsff3b566e_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 67.v),
                              Text(
                                userprofile4ItemModelObj.titleText!,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .bodyMediumPoppinsBluegray700,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              SizedBox(
                width: 153.h,
                child: Divider(
                  color: appTheme.blueGray50,
                ),
              ),
              SizedBox(height: 15.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCallIndigoA400,
                    height: 14.v,
                    width: 13.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_12_345_678_90".tr,
                            style: CustomTextStyles.bodySmallPoppinsff6f8ba4_1,
                          ),
                          TextSpan(
                            text: "lbl_1".tr,
                            style: CustomTextStyles.bodySmallPoppinsff6f8ba4,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
