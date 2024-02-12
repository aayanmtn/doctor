import '../models/productcard1_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(
    this.productcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 251.v,
      width: 176.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineGray20002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 158.v,
                    width: 173.h,
                    margin: EdgeInsets.only(left: 2.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 20.v,
                    ),
                    decoration: AppDecoration.fillGray10004.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage22,
                      height: 118.v,
                      width: 130.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    width: 103.h,
                    margin: EdgeInsets.only(left: 18.h),
                    child: Text(
                      productcard1ItemModelObj.bpMonitorName!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumOverpassBluegray9000113
                          .copyWith(
                        height: 1.46,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      productcard1ItemModelObj.bpMonitorPrice!,
                      style: CustomTextStyles
                          .titleMediumOverpassBluegray90001SemiBold,
                    ),
                  ),
                  SizedBox(height: 17.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSaleTag,
            height: 57.v,
            width: 64.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 39.h,
              margin: EdgeInsets.only(left: 4.h),
              child: Text(
                productcard1ItemModelObj.discountText!,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelMediumOverpassWhiteA700,
              ),
            ),
          ),
          CustomElevatedButton(
            height: 24.v,
            width: 54.h,
            text: "lbl_4_2".tr,
            margin: EdgeInsets.only(bottom: 15.v),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 3.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSignalWhiteA700,
                height: 12.v,
                width: 16.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillAmberA,
            buttonTextStyle: CustomTextStyles.labelLargeOverpassWhiteA700Bold,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
