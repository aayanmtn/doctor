import 'bloc/walkthrough_two_bloc.dart';
import 'models/walkthrough_two_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughTwoScreen extends StatelessWidget {
  const WalkthroughTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WalkthroughTwoBloc>(
      create: (context) => WalkthroughTwoBloc(WalkthroughTwoState(
        walkthroughTwoModelObj: WalkthroughTwoModel(),
      ))
        ..add(WalkthroughTwoInitialEvent()),
      child: WalkthroughTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 29.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildMainStack(context),
              SizedBox(height: 20.v),
              Text(
                "msg_medications_at_your".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 16.v),
              Container(
                width: 241.h,
                margin: EdgeInsets.symmetric(horizontal: 37.h),
                child: Text(
                  "msg_say_goodbye_to_pharmacy".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeNunitoSans,
                ),
              ),
              SizedBox(height: 90.v),
              _buildSliderRow(context),
              SizedBox(height: 2.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
      height: 349.v,
      width: 307.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150.v,
              width: 307.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  153.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 3.h),
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 15.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup56,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.v),
                  Container(
                    height: 51.v,
                    width: 47.h,
                    margin: EdgeInsets.only(left: 53.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMaximize,
                          height: 51.v,
                          width: 45.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaximizeBlueGray70001,
                          height: 48.v,
                          width: 43.h,
                          alignment: Alignment.bottomLeft,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 83.v),
                  SizedBox(
                    height: 31.v,
                    width: 40.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 4.h,
                            bottom: 1.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 20.v,
                          width: 21.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            top: 1.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 16.v,
                          width: 13.h,
                          alignment: Alignment.topLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                          height: 17.v,
                          width: 15.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 11.h),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray10003,
                              borderRadius: BorderRadius.circular(
                                7.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        right: 8.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 35.v,
                            width: 20.h,
                            margin: EdgeInsets.only(bottom: 45.v),
                          ),
                          Spacer(
                            flex: 73,
                          ),
                          Container(
                            height: 34.v,
                            width: 41.h,
                            margin: EdgeInsets.only(
                              top: 12.v,
                              bottom: 34.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                BlocSelector<WalkthroughTwoBloc,
                                    WalkthroughTwoState, bool?>(
                                  selector: (state) => state.isSelectedSwitch,
                                  builder: (context, isSelectedSwitch) {
                                    return CustomSwitch(
                                      alignment: Alignment.bottomCenter,
                                      value: isSelectedSwitch,
                                      onChange: (value) {
                                        context.read<WalkthroughTwoBloc>().add(
                                            ChangeSwitchEvent(value: value));
                                      },
                                    );
                                  },
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbsUpBlueGray70001,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 4.h,
                                    bottom: 4.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTelevision,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 2.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 16.v,
                                  width: 14.h,
                                  alignment: Alignment.topLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgUser,
                                  height: 17.v,
                                  width: 15.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 7.v),
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 26,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUpCyan400,
                            height: 34.v,
                            width: 21.h,
                            margin: EdgeInsets.only(top: 46.v),
                          ),
                        ],
                      ),
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

  /// Section Widget
  Widget _buildSliderRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_skip".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Container(
            height: 4.v,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 11.v,
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 2,
              effect: ScrollingDotsEffect(
                activeDotColor: Color(0X1212121D),
                dotHeight: 4.v,
              ),
            ),
          ),
          Text(
            "lbl_next".tr,
            style: CustomTextStyles.titleMediumPoppinsPrimary,
          ),
        ],
      ),
    );
  }
}
