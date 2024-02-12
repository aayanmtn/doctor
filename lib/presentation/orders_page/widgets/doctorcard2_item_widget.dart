import '../models/doctorcard2_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Doctorcard2ItemWidget extends StatelessWidget {
  Doctorcard2ItemWidget(
    this.doctorcard2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Doctorcard2ItemModel doctorcard2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 310.h,
            margin: EdgeInsets.only(right: 2.h),
            padding: EdgeInsets.fromLTRB(72.h, 3.v, 72.h, 2.v),
            decoration: AppDecoration.outlineGray,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    doctorcard2ItemModelObj.medicineName!,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    doctorcard2ItemModelObj.discountPercentage!,
                    style: CustomTextStyles.labelLargeInter,
                  ),
                ),
                SizedBox(height: 12.v),
                Opacity(
                  opacity: 0.8,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            doctorcard2ItemModelObj.appointmentDate!,
                            style: CustomTextStyles.labelLargeInter,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              doctorcard2ItemModelObj.text!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              doctorcard2ItemModelObj.appointmentTime!,
                              style: CustomTextStyles.labelLargeInter,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "lbl_reject_order".tr,
                  margin: EdgeInsets.only(right: 8.h),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 38.v,
                  text: "lbl_delivered".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  buttonTextStyle: CustomTextStyles.labelLargeInterWhiteA700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
