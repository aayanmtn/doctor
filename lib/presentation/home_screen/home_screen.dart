import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 414.h,
          child: Column(
            children: [
              _buildHeadlineSearch(context),
              SizedBox(height: 26.v),
              _buildScrollView(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeadlineSearch(BuildContext context) {
    return SizedBox(
      height: 313.v,
      width: 414.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 28.v,
              ),
              decoration: AppDecoration.primaryBlue.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL35,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 36.v),
                  Text(
                    "lbl_welcome_back".tr,
                    style: CustomTextStyles.titleMediumPoppinsWhiteA700Medium,
                  ),
                  SizedBox(height: 132.v),
                  BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_patients".tr,
                        hintStyle:
                            CustomTextStyles.bodyMediumPoppinsBluegray30001,
                        contentPadding: EdgeInsets.only(
                          top: 19.v,
                          right: 30.h,
                          bottom: 19.v,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 188.v,
              width: 217.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse90,
                    height: 188.v,
                    width: 217.h,
                    alignment: Alignment.center,
                  ),
                  CustomAppBar(
                    height: 45.v,
                    actions: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgRectangle2,
                        margin: EdgeInsets.symmetric(horizontal: 27.h),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                top: 98.v,
              ),
              child: Text(
                "msg_manage_your_work".tr,
                style: theme.textTheme.displaySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 5.v),
          padding: EdgeInsets.symmetric(horizontal: 21.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "lbl_earnings".tr,
                  style: CustomTextStyles.titleLargeBluegray900,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 13.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_8_453_00".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                          CustomElevatedButton(
                            height: 28.v,
                            width: 32.h,
                            text: "lbl3".tr,
                            margin: EdgeInsets.only(bottom: 7.v),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                            buttonTextStyle: CustomTextStyles
                                .labelLargeMontserratWhiteA700SemiBold,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Row(
                      children: [
                        SizedBox(
                          width: 87.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowLeftGreenA70001,
                                height: 13.v,
                                width: 15.h,
                                margin: EdgeInsets.only(top: 1.v),
                              ),
                              Text(
                                "lbl_2431_00".tr,
                                style: CustomTextStyles.labelMediumBlack9000111,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 80.h,
                          margin: EdgeInsets.only(left: 26.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUserRedA70002,
                                height: 13.v,
                                width: 15.h,
                                margin: EdgeInsets.only(top: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text(
                                  "lbl_526_00".tr,
                                  style:
                                      CustomTextStyles.labelMediumBlack9000111,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 55.v),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_earning_chart".tr,
                style: CustomTextStyles.titleSmallInterBluegray800,
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(right: 41.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 14.v),
                      child: Column(
                        children: [
                          Text(
                            "lbl_30".tr,
                            style: CustomTextStyles.bodySmallRobotoBluegray800,
                          ),
                          SizedBox(height: 28.v),
                          Text(
                            "lbl_20".tr,
                            style: CustomTextStyles.bodySmallRobotoBluegray800,
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "lbl_10".tr,
                              style:
                                  CustomTextStyles.bodySmallRobotoBluegray800,
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "lbl_0".tr,
                              style:
                                  CustomTextStyles.bodySmallRobotoBluegray800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 126.v,
                              width: 313.h,
                              margin: EdgeInsets.only(left: 4.h),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: SizedBox(
                                        height: 122.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 71.h),
                                      child: SizedBox(
                                        height: 122.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 139.h),
                                      child: SizedBox(
                                        height: 122.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 105.h),
                                      child: SizedBox(
                                        height: 122.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 37.h),
                                      child: SizedBox(
                                        height: 122.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 1.v,
                                      width: 305.h,
                                      margin: EdgeInsets.only(bottom: 2.v),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              width: 305.h,
                                              child: Divider(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              width: 305.h,
                                              child: Divider(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 43.v),
                                      child: SizedBox(
                                        width: 305.h,
                                        child: Divider(),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 42.v),
                                      child: SizedBox(
                                        width: 305.h,
                                        child: Divider(),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                      width: 305.h,
                                      child: Divider(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: SizedBox(
                                        height: 122.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 305.h,
                                      margin: EdgeInsets.fromLTRB(
                                          4.h, 37.v, 4.h, 4.v),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 29.h),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: fs.Svg(
                                            ImageConstant.imgGroup432,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlay,
                                            height: 8.adaptSize,
                                            width: 8.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 77.v),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlay,
                                            height: 8.adaptSize,
                                            width: 8.adaptSize,
                                            margin: EdgeInsets.only(
                                              top: 4.v,
                                              bottom: 73.v,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlay,
                                            height: 8.adaptSize,
                                            width: 8.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 26.h,
                                              top: 44.v,
                                              bottom: 33.v,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlay,
                                            height: 8.adaptSize,
                                            width: 8.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 26.h,
                                              bottom: 77.v,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPlay,
                                            height: 8.adaptSize,
                                            width: 8.adaptSize,
                                            margin: EdgeInsets.fromLTRB(
                                                26.h, 28.v, 35.h, 49.v),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPlay,
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPlay,
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 67.h,
                                      top: 33.v,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPlay,
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 101.h,
                                      top: 33.v,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPlay,
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(right: 34.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPlay,
                                    height: 8.adaptSize,
                                    width: 8.adaptSize,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 4.v),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Padding(
                              padding: EdgeInsets.only(right: 27.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "lbl_jan".tr,
                                      style: CustomTextStyles
                                          .bodySmallRobotoBluegray800,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "lbl_feb".tr,
                                      style: CustomTextStyles
                                          .bodySmallRobotoBluegray800,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "lbl_mar".tr,
                                      style: CustomTextStyles
                                          .bodySmallRobotoBluegray800,
                                    ),
                                  ),
                                  Text(
                                    "lbl_apr".tr,
                                    style: CustomTextStyles
                                        .bodySmallRobotoBluegray800,
                                  ),
                                  Text(
                                    "lbl_may".tr,
                                    style: CustomTextStyles
                                        .bodySmallRobotoBluegray800,
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Icongray500:
        return "/";
      case BottomBarEnum.Icongray50023x26:
        return "/";
      case BottomBarEnum.Searchblue50:
        return AppRoutes.searchDoctorsOnePage;
      case BottomBarEnum.Icongray50023x24:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.searchDoctorsOnePage:
        return SearchDoctorsOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
