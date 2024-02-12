import 'bloc/log_out_bloc.dart';
import 'models/log_out_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogOutDialog extends StatelessWidget {
  const LogOutDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogOutBloc>(
      create: (context) => LogOutBloc(LogOutState(
        logOutModelObj: LogOutModel(),
      ))
        ..add(LogOutInitialEvent()),
      child: LogOutDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270.h,
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 18.v),
          Text(
            "lbl_logout2".tr,
            style: CustomTextStyles.titleMediumMedium,
          ),
          SizedBox(height: 10.v),
          Container(
            width: 197.h,
            margin: EdgeInsets.symmetric(horizontal: 36.h),
            child: Text(
              "msg_you_ll_need_to_enter".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallGray90002_1.copyWith(
                height: 1.67,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Divider(
            color: appTheme.gray30002,
          ),
          Container(
            decoration: AppDecoration.fillGray30002,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  height: 40.v,
                  width: 134.h,
                  text: "lbl_cancel".tr,
                  buttonStyle: CustomButtonStyles.fillWhiteA1,
                  buttonTextStyle:
                      CustomTextStyles.bodyLargeInterSecondaryContainer,
                ),
                CustomElevatedButton(
                  height: 40.v,
                  width: 134.h,
                  text: "lbl_logout2".tr,
                  buttonStyle: CustomButtonStyles.fillWhiteA1,
                  buttonTextStyle: CustomTextStyles.bodyLargeInterRedA70002,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
