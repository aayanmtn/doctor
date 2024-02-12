import 'bloc/pop_up_bloc.dart';
import 'models/pop_up_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PopUpDialog extends StatelessWidget {
  const PopUpDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PopUpBloc>(
      create: (context) => PopUpBloc(PopUpState(
        popUpModelObj: PopUpModel(),
      ))
        ..add(PopUpInitialEvent()),
      child: PopUpDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildPopupSingleButton(context),
    );
  }

  /// Section Widget
  Widget _buildPopupSingleButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 27.h,
        right: 27.h,
        bottom: 284.v,
      ),
      padding: EdgeInsets.all(27.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsPrimary,
            height: 67.adaptSize,
            width: 67.adaptSize,
          ),
          SizedBox(height: 34.v),
          Text(
            "lbl_allow_location".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 11.v),
          Container(
            width: 261.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 31.h,
            ),
            child: Text(
              "msg_grant_location_access".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumNunitoSansBluegray70001,
            ),
          ),
          SizedBox(height: 52.v),
          CustomElevatedButton(
            height: 62.v,
            text: "lbl_allow_location".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL31,
            buttonTextStyle: CustomTextStyles.titleMediumManropeWhiteA700,
          ),
        ],
      ),
    );
  }
}
