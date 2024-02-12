import '../models/whatshouldiexpect_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WhatshouldiexpectItemWidget extends StatelessWidget {
  WhatshouldiexpectItemWidget(
    this.whatshouldiexpectItemModelObj, {
    Key? key,
    this.onSelectedExpandableList,
  }) : super(
          key: key,
        );

  WhatshouldiexpectItemModel whatshouldiexpectItemModelObj;

  Function(bool)? onSelectedExpandableList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: 255.h,
                  child: Text(
                    "msg_what_should_i_expect".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
              ),
            ],
          ),
          trailing: (whatshouldiexpectItemModelObj.isSelected ?? false)
              ? CustomImageView(
                  imagePath: ImageConstant.imgChevronLeft,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 55.h,
                    top: 10.v,
                    bottom: 13.v,
                  ),
                )
              : CustomImageView(
                  imagePath: ImageConstant.imgChevronLeftGray90002,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 55.h,
                    top: 10.v,
                    bottom: 13.v,
                  ),
                ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Column(
                children: [
                  SizedBox(
                    width: 325.h,
                    child: Text(
                      "msg_during_a_doctor_s".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {
            onSelectedExpandableList?.call(value);
          },
        ),
      ),
    );
  }
}
