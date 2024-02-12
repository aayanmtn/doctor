import 'bloc/video_bloc.dart';
import 'models/video_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_floating_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoBloc>(
      create: (context) => VideoBloc(VideoState(
        videoModelObj: VideoModel(),
      ))
        ..add(VideoInitialEvent()),
      child: VideoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoBloc, VideoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.blueGray10004,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.blueGray10004,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup607,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 33.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 14.v),
                    Expanded(
                      child: Column(
                        children: [
                          _buildDoctorProfile(context),
                          Spacer(),
                          CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(17.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIconWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildVideoControls(context),
            floatingActionButton: _buildFloatingActionButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDoctorProfile(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 109.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_dr_fleece_marigold".tr,
                style: CustomTextStyles.bodyLargeBluegray700,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_gynecologis".tr,
                      style: CustomTextStyles.bodyLargeff504de5_1,
                    ),
                    TextSpan(
                      text: "lbl_t".tr,
                      style: CustomTextStyles.bodyLargeff504de5,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
        Container(
          height: 129.v,
          width: 98.h,
          margin: EdgeInsets.only(top: 22.v),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgPhotoHere,
            height: 129.v,
            width: 98.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVideoControls(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 162.h,
        bottom: 33.v,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconWhiteA70050x50,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconBlueGray10002,
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(left: 86.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 50,
      width: 50,
      child: CustomImageView(
        imagePath: ImageConstant.imgIcon50x50,
        height: 25.0.v,
        width: 25.0.h,
      ),
    );
  }
}
