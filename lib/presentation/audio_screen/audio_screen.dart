import 'bloc/audio_bloc.dart';
import 'models/audio_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AudioScreen extends StatelessWidget {
  const AudioScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AudioBloc>(
      create: (context) => AudioBloc(AudioState(
        audioModelObj: AudioModel(),
      ))
        ..add(AudioInitialEvent()),
      child: AudioScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioBloc, AudioState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 34.h,
                vertical: 103.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.v),
                  Container(
                    height: 76.adaptSize,
                    width: 76.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    decoration: AppDecoration.outlineIndigoA.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder38,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage70x70,
                      height: 70.adaptSize,
                      width: 70.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 28.h),
                      child: Text(
                        "msg_dr_druid_wensleydale".tr,
                        style: CustomTextStyles.bodyLargeBluegray700,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_01_1".tr,
                          style: CustomTextStyles.titleLargeff504de5,
                        ),
                        TextSpan(
                          text: "lbl_1".tr,
                          style: CustomTextStyles.titleLargeff504de5Regular,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(
                    flex: 44,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMenu,
                              height: 24.v,
                              width: 22.h,
                            ),
                            SizedBox(height: 9.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_mut".tr,
                                    style: CustomTextStyles
                                        .bodySmallPoppinsff6f8ba4_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_e".tr,
                                    style: CustomTextStyles
                                        .bodySmallPoppinsff6f8ba4,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              decoration: IconButtonStyleHelper.outlineBlueGray,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgSettingsBlueGray40001,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Text(
                              "lbl_hold".tr,
                              style: CustomTextStyles
                                  .bodySmallPoppinsBluegray40001_2,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFileBlueGray40001,
                              height: 22.v,
                              width: 17.h,
                            ),
                            SizedBox(height: 9.v),
                            Text(
                              "lbl_notes".tr,
                              style: CustomTextStyles
                                  .bodySmallPoppinsBluegray40001_2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 52.v),
                  _buildLock(context),
                  Spacer(
                    flex: 55,
                  ),
                  CustomIconButton(
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    padding: EdgeInsets.all(17.h),
                    decoration: IconButtonStyleHelper.fillRedA,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLock(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLockBlueGray40001,
              height: 18.v,
              width: 16.h,
            ),
            SizedBox(height: 9.v),
            Text(
              "lbl_contacts".tr,
              style: CustomTextStyles.bodySmallPoppinsBluegray40001_2,
            ),
          ],
        ),
        Spacer(
          flex: 47,
        ),
        Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGrid,
              height: 19.adaptSize,
              width: 19.adaptSize,
            ),
            SizedBox(height: 9.v),
            Text(
              "lbl_dial_pad".tr,
              style: CustomTextStyles.bodySmallPoppinsBluegray40001_2,
            ),
          ],
        ),
        Spacer(
          flex: 52,
        ),
        Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgInfo,
              height: 20.v,
              width: 16.h,
            ),
            SizedBox(height: 10.v),
            Text(
              "lbl_speaker".tr,
              style: CustomTextStyles.bodySmallPoppinsBluegray40001_2,
            ),
          ],
        ),
      ],
    );
  }
}
