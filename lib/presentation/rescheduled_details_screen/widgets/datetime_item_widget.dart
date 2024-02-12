import '../models/datetime_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatetimeItemWidget extends StatelessWidget {
  DatetimeItemWidget(
    this.datetimeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DatetimeItemModel datetimeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 39.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillBlue,
              child: CustomImageView(
                imagePath: datetimeItemModelObj?.calendar,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  datetimeItemModelObj.userName!,
                  style: CustomTextStyles.titleSmallInterGray90002,
                ),
                SizedBox(height: 7.v),
                Text(
                  datetimeItemModelObj.date!,
                  style: CustomTextStyles.bodySmall_1,
                ),
                SizedBox(height: 4.v),
                Text(
                  datetimeItemModelObj.time!,
                  style: CustomTextStyles.bodySmall_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
