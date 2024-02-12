import '../models/userprofile3_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.v,
      width: 56.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.white.copyWith(
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
          CustomElevatedButton(
            height: 18.v,
            width: 36.h,
            text: "lbl_5_0".tr,
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.bodySmallPoppinsBluegray700,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
