import '../models/userprofile1_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineBlack900013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(top: 7.v),
                  color: appTheme.blueGray10004,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Container(
                    height: 66.adaptSize,
                    width: 66.adaptSize,
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPhotoHere66x66,
                          height: 66.adaptSize,
                          width: 66.adaptSize,
                          radius: BorderRadius.circular(
                            13.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: userprofile1ItemModelObj?.userImage2,
                          height: 66.adaptSize,
                          width: 66.adaptSize,
                          radius: BorderRadius.circular(
                            13.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 10.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofile1ItemModelObj.userName!,
                        style: CustomTextStyles.bodyMediumPoppinsBluegray70015,
                      ),
                      Text(
                        userprofile1ItemModelObj.userSpecialty!,
                        style: CustomTextStyles.bodyMediumPoppinsIndigoA400,
                      ),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLinkedin,
                            height: 13.v,
                            width: 10.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_eastlake_ohio2".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsff6f8ba413,
                                  ),
                                  TextSpan(
                                    text: "lbl_5".tr,
                                    style: CustomTextStyles
                                        .bodyMediumPoppinsff6f8ba4,
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
                Spacer(),
                CustomElevatedButton(
                  height: 24.v,
                  width: 54.h,
                  text: "lbl_4_2".tr,
                  margin: EdgeInsets.only(bottom: 49.v),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 3.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSignalWhiteA700,
                      height: 12.v,
                      width: 16.h,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillAmberA,
                  buttonTextStyle:
                      CustomTextStyles.labelLargeOverpassWhiteA700Bold,
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          CustomElevatedButton(
            height: 33.v,
            width: 99.h,
            text: "lbl_book".tr,
            margin: EdgeInsets.only(right: 15.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL16,
            buttonTextStyle:
                CustomTextStyles.labelLargePoppinsWhiteA700SemiBold_1,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
