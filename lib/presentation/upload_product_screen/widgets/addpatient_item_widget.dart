import '../models/addpatient_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddpatientItemWidget extends StatelessWidget {
  AddpatientItemWidget(
    this.addpatientItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddpatientItemModel addpatientItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 101.h,
      child: DottedBorder(
        color: appTheme.indigoA400,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(12),
        borderType: BorderType.RRect,
        dashPattern: [
          6,
        ],
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 45.v,
          ),
          decoration: AppDecoration.outlineIndigoA4001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: addpatientItemModelObj?.addImage,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              SizedBox(height: 12.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_ad".tr,
                      style: CustomTextStyles.titleSmallff3b566eMedium,
                    ),
                    TextSpan(
                      text: "lbl_d".tr,
                      style: CustomTextStyles.titleSmallff3b566e,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
