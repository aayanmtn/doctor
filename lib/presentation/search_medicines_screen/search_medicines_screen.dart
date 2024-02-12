import '../search_medicines_screen/widgets/productcard1_item_widget.dart';
import '../search_medicines_screen/widgets/productcard_item_widget.dart';
import 'bloc/search_medicines_bloc.dart';
import 'models/productcard1_item_model.dart';
import 'models/productcard_item_model.dart';
import 'models/search_medicines_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchMedicinesScreen extends StatelessWidget {
  SearchMedicinesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchMedicinesBloc>(
      create: (context) => SearchMedicinesBloc(SearchMedicinesState(
        searchMedicinesModelObj: SearchMedicinesModel(),
      ))
        ..add(SearchMedicinesInitialEvent()),
      child: SearchMedicinesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 440.h,
          padding: EdgeInsets.symmetric(horizontal: 29.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    right: 24.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: BlocSelector<SearchMedicinesBloc,
                            SearchMedicinesState, TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                              controller: searchController,
                              hintText: "lbl_search2".tr,
                              hintStyle:
                                  CustomTextStyles.labelLargeInterGray400,
                              borderDecoration:
                                  SearchViewStyleHelper.fillGrayTL12,
                              fillColor: appTheme.gray10008,
                            );
                          },
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsGray90002,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 12.h,
                          top: 11.v,
                          bottom: 11.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              _buildFrame(context),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(right: 14.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProductCard(context),
                    _buildProductCard1(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_medicines".tr,
                style: CustomTextStyles.titleMediumPoppinsPrimary,
              ),
              SizedBox(height: 5.v),
              SizedBox(
                width: 74.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                  indent: 4.h,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: Text(
              "lbl_doctors".tr,
              style: CustomTextStyles.titleMediumPoppinsBluegray40001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Expanded(
      child: Expanded(
        child: BlocSelector<SearchMedicinesBloc, SearchMedicinesState,
            SearchMedicinesModel?>(
          selector: (state) => state.searchMedicinesModelObj,
          builder: (context, searchMedicinesModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 11.v,
                );
              },
              itemCount:
                  searchMedicinesModelObj?.productcardItemList.length ?? 0,
              itemBuilder: (context, index) {
                ProductcardItemModel model =
                    searchMedicinesModelObj?.productcardItemList[index] ??
                        ProductcardItemModel();
                return ProductcardItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard1(BuildContext context) {
    return Expanded(
      child: Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: BlocSelector<SearchMedicinesBloc, SearchMedicinesState,
              SearchMedicinesModel?>(
            selector: (state) => state.searchMedicinesModelObj,
            builder: (context, searchMedicinesModelObj) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 10.v,
                  );
                },
                itemCount:
                    searchMedicinesModelObj?.productcard1ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Productcard1ItemModel model =
                      searchMedicinesModelObj?.productcard1ItemList[index] ??
                          Productcard1ItemModel();
                  return Productcard1ItemWidget(
                    model,
                  );
                },
              );
            },
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
