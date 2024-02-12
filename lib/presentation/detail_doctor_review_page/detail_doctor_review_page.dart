import 'bloc/detail_doctor_review_bloc.dart';
import 'models/detail_doctor_review_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DetailDoctorReviewPage extends StatefulWidget {
  const DetailDoctorReviewPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailDoctorReviewPageState createState() => DetailDoctorReviewPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DetailDoctorReviewBloc>(
      create: (context) => DetailDoctorReviewBloc(DetailDoctorReviewState(
        detailDoctorReviewModelObj: DetailDoctorReviewModel(),
      ))
        ..add(DetailDoctorReviewInitialEvent()),
      child: DetailDoctorReviewPage(),
    );
  }
}

class DetailDoctorReviewPageState extends State<DetailDoctorReviewPage>
    with AutomaticKeepAliveClientMixin<DetailDoctorReviewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailDoctorReviewBloc, DetailDoctorReviewState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.white,
              child: Column(
                children: [
                  SizedBox(height: 32.v),
                  SizedBox(
                    height: 501.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 258.h,
                            margin: EdgeInsets.only(
                              right: 43.h,
                              bottom: 15.v,
                            ),
                            child: Text(
                              "msg_i_was_initially".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray90002_3
                                  .copyWith(
                                height: 1.60,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 85.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1),
                                colors: [
                                  appTheme.blueGray10001.withOpacity(0),
                                  appTheme.whiteA700,
                                ],
                              ),
                            ),
                          ),
                        ),
                        _buildMakeAnAppointment(context),
                      ],
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
  Widget _buildMakeAnAppointment(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  margin: EdgeInsets.only(bottom: 139.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDoctorReviews(
                        context,
                        userName: "lbl_jane_cooper".tr,
                        date: "lbl_today".tr,
                      ),
                      SizedBox(height: 8.v),
                      CustomRatingBar(
                        initialRating: 0,
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        width: 274.h,
                        margin: EdgeInsets.only(right: 3.h),
                        child: Text(
                          "msg_as_someone_who_lives".tr,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmall_1.copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 13.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle318,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  margin: EdgeInsets.only(bottom: 100.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDoctorReviews(
                        context,
                        userName: "lbl_robert_fox".tr,
                        date: "lbl_today".tr,
                      ),
                      SizedBox(height: 9.v),
                      CustomRatingBar(
                        initialRating: 0,
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        width: 258.h,
                        margin: EdgeInsets.only(right: 19.h),
                        child: Text(
                          "msg_i_was_initially".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmall_1.copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle31840x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  margin: EdgeInsets.only(bottom: 12.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_jacob_jones".tr,
                        style: CustomTextStyles.titleMediumSemiBold_1,
                      ),
                      SizedBox(height: 9.v),
                      CustomRatingBar(
                        initialRating: 0,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 31.v,
                  ),
                  child: Text(
                    "lbl_today".tr,
                    style: CustomTextStyles.bodySmallGray50001,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            CustomElevatedButton(
              text: "msg_make_an_appointment".tr,
              buttonStyle: CustomButtonStyles.fillBlueATL16,
              buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String userName,
    required String date,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userName,
          style: CustomTextStyles.titleMediumSemiBold_1.copyWith(
            color: appTheme.gray90002,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            date,
            style: CustomTextStyles.bodySmallGray50001.copyWith(
              color: appTheme.gray50001,
            ),
          ),
        ),
      ],
    );
  }
}
