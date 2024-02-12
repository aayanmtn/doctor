import '../home_one_screen/widgets/dynamicview_item_widget.dart';
import '../home_one_screen/widgets/productlist_item_widget.dart';
import 'bloc/home_one_bloc.dart';
import 'models/dynamicview_item_model.dart';
import 'models/home_one_model.dart';
import 'models/productlist_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_search_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomeOneScreen extends StatelessWidget {
  HomeOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeOneBloc>(
      create: (context) => HomeOneBloc(HomeOneState(
        homeOneModelObj: HomeOneModel(),
      ))
        ..add(HomeOneInitialEvent()),
      child: HomeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 440.h,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 836.v,
                    width: 387.h,
                    margin: EdgeInsets.symmetric(horizontal: 26.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildDynamicView(context),
                        _buildCategories(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildDiabetesCare(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUserIcon,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 13.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_muhiris".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        Container(
          height: 27.36.v,
          width: 28.799988.h,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 14.v,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShoppingCart,
                height: 24.adaptSize,
                width: 24.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  top: 3.v,
                  right: 4.h,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    bottom: 13.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "lbl_22".tr,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDynamicView(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocSelector<HomeOneBloc, HomeOneState, TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return CustomSearchView(
                controller: searchController,
                hintText: "msg_search_medicine".tr,
                contentPadding: EdgeInsets.only(
                  left: 16.h,
                  top: 20.v,
                  bottom: 20.v,
                ),
                borderDecoration: SearchViewStyleHelper.fillLightGreen,
                fillColor: appTheme.lightGreen50,
              );
            },
          ),
          SizedBox(height: 20.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_reminder".tr.toUpperCase(),
                  style: CustomTextStyles.titleMediumBeVietnamProGray90018,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 223.h,
                  child: Text(
                    "msg_check_active_appointments".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumLatoGray900.copyWith(
                      height: 1.36,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 125.h,
                      margin: EdgeInsets.only(top: 9.v),
                      child: Text(
                        "msg_no_appointments".tr.toUpperCase(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeBeVietnamProGray900
                            .copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      height: 41.v,
                      width: 123.h,
                      text: "lbl_check_dates".tr.toUpperCase(),
                      margin: EdgeInsets.only(
                        left: 88.h,
                        bottom: 2.v,
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                      buttonTextStyle: CustomTextStyles.titleSmallLatoWhiteA700,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          SizedBox(
            height: 185.v,
            width: 387.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                BlocBuilder<HomeOneBloc, HomeOneState>(
                  builder: (context, state) {
                    return CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 185.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (
                          index,
                          reason,
                        ) {
                          state.sliderIndex = index;
                        },
                      ),
                      itemCount:
                          state.homeOneModelObj?.dynamicviewItemList.length ??
                              0,
                      itemBuilder: (context, index, realIndex) {
                        DynamicviewItemModel model =
                            state.homeOneModelObj?.dynamicviewItemList[index] ??
                                DynamicviewItemModel();
                        return DynamicviewItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: BlocBuilder<HomeOneBloc, HomeOneState>(
                    builder: (context, state) {
                      return Container(
                        height: 8.v,
                        margin: EdgeInsets.only(
                          left: 145.h,
                          bottom: 13.v,
                        ),
                        child: AnimatedSmoothIndicator(
                          activeIndex: state.sliderIndex,
                          count: state.homeOneModelObj?.dynamicviewItemList
                                  .length ??
                              0,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            spacing: 14.43,
                            activeDotColor: appTheme.whiteA700,
                            dotColor: appTheme.blueGray90033,
                            dotHeight: 8.v,
                            dotWidth: 8.h,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_popular_medicines".tr,
                      style: CustomTextStyles.titleLargeBeVietnamProGray900,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 2.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "lbl_see_all".tr.toUpperCase(),
                        style: CustomTextStyles.titleSmallBeVietnamProGray900,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 4.v,
                  bottom: 6.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.v),
          BlocSelector<HomeOneBloc, HomeOneState, HomeOneModel?>(
            selector: (state) => state.homeOneModelObj,
            builder: (context, homeOneModelObj) {
              return StaggeredGridView.countBuilder(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 4,
                crossAxisSpacing: 14.43.h,
                mainAxisSpacing: 14.43.h,
                staggeredTileBuilder: (index) {
                  return StaggeredTile.fit(2);
                },
                itemCount: homeOneModelObj?.productlistItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ProductlistItemModel model =
                      homeOneModelObj?.productlistItemList[index] ??
                          ProductlistItemModel();
                  return ProductlistItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiabetesCare(BuildContext context) {
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
