import '../models/experiencesection_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExperiencesectionItemWidget extends StatelessWidget {
  ExperiencesectionItemWidget(
    this.experiencesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExperiencesectionItemModel experiencesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 95.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 54.v,
            width: 42.h,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL12,
            ),
            child: CustomImageView(
              imagePath: experiencesectionItemModelObj?.userImage,
              height: 19.v,
              width: 13.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Text(
                experiencesectionItemModelObj.yrsCounter!,
                style: CustomTextStyles.labelLargePoppinsBluegray90003,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Text(
            experiencesectionItemModelObj.experience!,
            style: CustomTextStyles.labelMediumPoppinsBluegray500,
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
