import 'bloc/finish_order_bloc.dart';
import 'models/finish_order_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_outlined_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class FinishOrderScreen extends StatelessWidget {
  const FinishOrderScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FinishOrderBloc>(
      create: (context) => FinishOrderBloc(FinishOrderState(
        finishOrderModelObj: FinishOrderModel(),
      ))
        ..add(FinishOrderInitialEvent()),
      child: FinishOrderScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinishOrderBloc, FinishOrderState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 36.v),
              child: Column(
                children: [
                  SizedBox(
                    height: 466.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildOrderSuccess(context),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 74.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 226.h,
                                  child: Text(
                                    "msg_thank_you_order".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .headlineSmallPoppinsBlack90001
                                        .copyWith(
                                      height: 1.31,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Opacity(
                                  opacity: 0.3,
                                  child: Text(
                                    "msg_please_rate_the".tr,
                                    style: CustomTextStyles.titleSmallGray80075,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 34.v),
                  CustomRatingBar(
                    initialRating: 2,
                    itemSize: 33,
                    color: appTheme.yellow800,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildSubmitButtons(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOrderSuccess(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 99.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.gradientWhiteAToWhiteA700,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 166.v),
            Container(
              margin: EdgeInsets.only(left: 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: 43.h,
                vertical: 8.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup89,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 64.v),
                  Container(
                    height: 82.adaptSize,
                    width: 82.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 27.h,
                      vertical: 31.v,
                    ),
                    decoration: AppDecoration.outlineLightBlueAD.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder41,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkWhiteA700,
                      height: 17.v,
                      width: 26.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 32.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 57.v,
            width: 233.h,
            text: "lbl_submit".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL8,
            buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001,
          ),
          CustomOutlinedButton(
            height: 57.v,
            width: 82.h,
            text: "lbl_skip".tr,
            margin: EdgeInsets.only(left: 20.h),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL7,
            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          ),
        ],
      ),
    );
  }
}
