import '../models/userprofile2_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(1.h, 10.v, 1.h, 9.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: userprofile2ItemModelObj?.userImage,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 59.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofile2ItemModelObj.doctorName!,
                        style: CustomTextStyles.titleSmallInterGray90002,
                      ),
                      SizedBox(height: 3.v),
                      Opacity(
                        opacity: 0.8,
                        child: Text(
                          userprofile2ItemModelObj.doctorSpecialty!,
                          style: CustomTextStyles.bodySmallGray700,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      SizedBox(
                        width: 186.h,
                        child: Text(
                          userprofile2ItemModelObj.questionText!,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmall_1.copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 32.v),
                    child: Column(
                      children: [
                        Text(
                          userprofile2ItemModelObj.messageTime!,
                          style: CustomTextStyles.bodySmall10,
                        ),
                        SizedBox(height: 36.v),
                        CustomElevatedButton(
                          height: 20.v,
                          width: 20.h,
                          text: "lbl_22".tr,
                          margin: EdgeInsets.only(right: 5.h),
                          buttonStyle: CustomButtonStyles.fillBlueATL6,
                          buttonTextStyle: CustomTextStyles.bodySmallWhiteA700,
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
