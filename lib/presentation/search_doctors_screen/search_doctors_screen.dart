import '../search_doctors_screen/widgets/phonenumber_item_widget.dart';
import 'bloc/search_doctors_bloc.dart';
import 'models/phonenumber_item_model.dart';
import 'models/search_doctors_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_outlined_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchDoctorsScreen extends StatelessWidget {
  SearchDoctorsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchDoctorsBloc>(
      create: (context) => SearchDoctorsBloc(SearchDoctorsState(
        searchDoctorsModelObj: SearchDoctorsModel(),
      ))
        ..add(SearchDoctorsInitialEvent()),
      child: SearchDoctorsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 921.v,
              width: 440.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 21.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildNavigationBar(context),
                          SizedBox(height: 29.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 33.h,
                              right: 20.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildSearchBar(context),
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
                          SizedBox(height: 30.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 11.h,
                                right: 31.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildFilterCategory(context),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Text(
                                      "lbl_medicine".tr,
                                      style: CustomTextStyles
                                          .titleMediumPoppinsBluegray40001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 32.v),
                          _buildItemColumn(context),
                          SizedBox(height: 11.v),
                          _buildItemColumn1(context),
                          SizedBox(height: 11.v),
                          _buildItemColumn2(context),
                          SizedBox(height: 11.v),
                          _buildItemColumn3(context),
                          SizedBox(height: 73.v),
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.3,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShadow,
                      height: 771.v,
                      width: 440.h,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  _buildHorizontalScroll(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserIcon,
            height: 28.adaptSize,
            width: 28.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_muhiris".tr.toUpperCase(),
              style: CustomTextStyles.titleMediumBeVietnamProGray900,
            ),
          ),
          Spacer(),
          SizedBox(
            height: 27.v,
            width: 29.h,
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
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 14.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 2.v,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Expanded(
      child: BlocSelector<SearchDoctorsBloc, SearchDoctorsState,
          TextEditingController?>(
        selector: (state) => state.searchBarController,
        builder: (context, searchBarController) {
          return CustomTextFormField(
            controller: searchBarController,
            hintText: "lbl_search2".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 11.v, 8.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgContrastGray400,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 46.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 15.v,
              right: 30.h,
              bottom: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL12,
            fillColor: appTheme.gray10008,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterCategory(BuildContext context) {
    return BlocSelector<SearchDoctorsBloc, SearchDoctorsState,
        TextEditingController?>(
      selector: (state) => state.filterCategoryController,
      builder: (context, filterCategoryController) {
        return CustomTextFormField(
          width: 70.h,
          controller: filterCategoryController,
          hintText: "lbl_doctors".tr,
          hintStyle: CustomTextStyles.titleMediumPoppinsPrimary,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.underLinePrimary1,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 54.h,
      text: "lbl_4_2".tr,
      margin: EdgeInsets.only(bottom: 49.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignalWhiteA700,
          height: 12.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillAmberA,
      buttonTextStyle: CustomTextStyles.labelLargeOverpassWhiteA700Bold,
    );
  }

  /// Section Widget
  Widget _buildBook(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 99.h,
      text: "lbl_book".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.labelLargePoppinsWhiteA700SemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildItemColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.h),
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineBlack900013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: _buildSixtyOne(
                    context,
                    imageTwoImage: ImageConstant.imgImage266x66,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 10.v,
                    bottom: 2.v,
                  ),
                  child: _buildText(
                    context,
                    userName: "msg_carnegie_mondover".tr,
                    cardiology: "lbl_orthopaedics".tr,
                    locationText: "msg_eastlake_ohio".tr,
                  ),
                ),
                Spacer(),
                _buildButton(context),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCallIndigoA400,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 9.v,
                    bottom: 8.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_12_345_678_90".tr,
                          style: CustomTextStyles.bodyMediumPoppinsff6f8ba413,
                        ),
                        TextSpan(
                          text: "lbl_1".tr,
                          style: CustomTextStyles.bodyMediumPoppinsff6f8ba4,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                _buildBook(context),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 54.h,
      text: "lbl_4_2".tr,
      margin: EdgeInsets.only(bottom: 49.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignalWhiteA700,
          height: 12.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillAmberA,
      buttonTextStyle: CustomTextStyles.labelLargeOverpassWhiteA700Bold,
    );
  }

  /// Section Widget
  Widget _buildItemColumn1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.h),
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineBlack900013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: _buildSixtyOne(
                    context,
                    imageTwoImage: ImageConstant.imgImage21,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 10.v,
                    bottom: 2.v,
                  ),
                  child: _buildText(
                    context,
                    userName: "msg_lurch_schpellchek".tr,
                    cardiology: "lbl_cardiology".tr,
                    locationText: "msg_eastlake_ohio".tr,
                  ),
                ),
                Spacer(),
                _buildButton1(context),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCallIndigoA400,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 9.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    "lbl_34_567_890_123".tr,
                    style: CustomTextStyles.bodyMediumPoppinsBluegray4000113,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.primaryBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Text(
                    "lbl_book".tr,
                    style:
                        CustomTextStyles.labelLargePoppinsWhiteA700SemiBold_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 54.h,
      text: "lbl_4_2".tr,
      margin: EdgeInsets.only(bottom: 49.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignalWhiteA700,
          height: 12.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillAmberA,
      buttonTextStyle: CustomTextStyles.labelLargeOverpassWhiteA700Bold,
    );
  }

  /// Section Widget
  Widget _buildItemColumn2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.h),
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineBlack900013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: _buildSixtyOne(
                    context,
                    imageTwoImage: ImageConstant.imgImage23,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 10.v,
                    bottom: 2.v,
                  ),
                  child: _buildText(
                    context,
                    userName: "msg_rodney_artichoke".tr,
                    cardiology: "lbl_nephrology".tr,
                    locationText: "msg_eastlake_ohio".tr,
                  ),
                ),
                Spacer(),
                _buildButton2(context),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          BlocSelector<SearchDoctorsBloc, SearchDoctorsState,
              SearchDoctorsModel?>(
            selector: (state) => state.searchDoctorsModelObj,
            builder: (context, searchDoctorsModelObj) {
              return Wrap(
                runSpacing: 107.11.v,
                spacing: 107.11.h,
                children: List<Widget>.generate(
                  searchDoctorsModelObj?.phonenumberItemList.length ?? 0,
                  (index) {
                    PhonenumberItemModel model =
                        searchDoctorsModelObj?.phonenumberItemList[index] ??
                            PhonenumberItemModel();

                    return PhonenumberItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<SearchDoctorsBloc>().add(
                            UpdateChipViewEvent(
                                index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton3(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 54.h,
      text: "lbl_4_2".tr,
      margin: EdgeInsets.only(bottom: 49.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignalWhiteA700,
          height: 12.v,
          width: 16.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillAmberA,
      buttonTextStyle: CustomTextStyles.labelLargeOverpassWhiteA700Bold,
    );
  }

  /// Section Widget
  Widget _buildBook1(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 99.h,
      text: "lbl_book".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.labelLargePoppinsWhiteA700SemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildItemColumn3(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.h),
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineBlack900013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: _buildSixtyOne(
                    context,
                    imageTwoImage: ImageConstant.imgImage24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 10.v,
                    bottom: 2.v,
                  ),
                  child: _buildText(
                    context,
                    userName: "msg_rodney_artichoke".tr,
                    cardiology: "lbl_nephrology".tr,
                    locationText: "msg_eastlake_ohio".tr,
                  ),
                ),
                Spacer(),
                _buildButton3(context),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCallIndigoA400,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 9.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 8.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_45_678_901_234".tr,
                    style: CustomTextStyles.bodyMediumPoppinsBluegray4000113,
                  ),
                ),
                Spacer(),
                _buildBook1(context),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSortBy(BuildContext context) {
    return CustomOutlinedButton(
      height: 64.v,
      text: "lbl_sort_by".tr,
      margin: EdgeInsets.symmetric(horizontal: 28.h),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleLargeInterGray9000221,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildButton4(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      width: 98.h,
      text: "lbl_none".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL26,
      buttonTextStyle: CustomTextStyles.bodyLargeInterWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildButton5(BuildContext context) {
    return CustomOutlinedButton(
      height: 48.v,
      width: 180.h,
      text: "msg_heart_specialist".tr,
      buttonStyle: CustomButtonStyles.outlineGrayTL24,
      buttonTextStyle: CustomTextStyles.bodyLargeInterGray400,
    );
  }

  /// Section Widget
  Widget _buildButton6(BuildContext context) {
    return CustomElevatedButton(
      height: 61.v,
      text: "lbl_done".tr,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 38.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          top: 159.v,
          bottom: 82.v,
        ),
        child: IntrinsicWidth(
          child: Container(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 10.v,
            ),
            decoration: AppDecoration.outlineGray100081,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 68.h,
                    child: Divider(
                      color: appTheme.gray10008,
                    ),
                  ),
                ),
                SizedBox(height: 38.v),
                _buildSortBy(context),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_speciality".tr,
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    right: 80.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 75.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.h,
                          vertical: 13.v,
                        ),
                        decoration: AppDecoration.primaryBlue.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        ),
                        child: Text(
                          "lbl_all".tr,
                          style: CustomTextStyles.bodyLargeInterWhiteA700,
                        ),
                      ),
                      Container(
                        width: 127.h,
                        margin: EdgeInsets.only(left: 14.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.h,
                          vertical: 13.v,
                        ),
                        decoration: AppDecoration.outlineGray10001.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        ),
                        child: Text(
                          "lbl_medicine".tr,
                          style: CustomTextStyles.bodyLargeInterGray400,
                        ),
                      ),
                      Container(
                        width: 118.h,
                        margin: EdgeInsets.only(left: 14.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.h,
                          vertical: 13.v,
                        ),
                        decoration: AppDecoration.outlineGray10001.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        ),
                        child: Text(
                          "lbl_doctors".tr,
                          style: CustomTextStyles.bodyLargeInterGray400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 42.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_doctor".tr,
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                ),
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildButton4(context),
                      _buildButton5(context),
                      Container(
                        width: 122.h,
                        padding: EdgeInsets.symmetric(vertical: 13.v),
                        decoration: AppDecoration.outlineGray10001.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        ),
                        child: Text(
                          "lbl_ear_specialist".tr,
                          style: CustomTextStyles.bodyLargeInterGray400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 44.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_rating".tr,
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 86.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 11.v,
                        ),
                        decoration: AppDecoration.primaryBlue.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSignalWhiteA70022x22,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.v),
                              child: Text(
                                "lbl_all".tr,
                                style: CustomTextStyles.bodyLargeInterWhiteA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildRow(
                        context,
                        textValue: "lbl_5".tr,
                      ),
                      _buildRow(
                        context,
                        textValue: "lbl_4".tr,
                      ),
                      _buildRow(
                        context,
                        textValue: "lbl_32".tr,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 11.v,
                        ),
                        decoration: AppDecoration.fillGray10001.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSignalGray300,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 7.h,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "lbl_22".tr,
                                style: CustomTextStyles.bodyLargeInterGray300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 53.v),
                _buildButton6(context),
                SizedBox(height: 37.v),
              ],
            ),
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

  /// Common widget
  Widget _buildSixtyOne(
    BuildContext context, {
    required String imageTwoImage,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.blueGray10004,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 66.adaptSize,
        width: 66.adaptSize,
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPhotoHere66x66,
              height: 66.adaptSize,
              width: 66.adaptSize,
              radius: BorderRadius.circular(
                13.h,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: imageTwoImage,
              height: 66.adaptSize,
              width: 66.adaptSize,
              radius: BorderRadius.circular(
                13.h,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildText(
    BuildContext context, {
    required String userName,
    required String cardiology,
    required String locationText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: CustomTextStyles.bodyMediumPoppinsBluegray70015.copyWith(
            color: appTheme.blueGray700,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_cardiolog".tr,
                style: CustomTextStyles.bodyMediumPoppinsff504de513,
              ),
              TextSpan(
                text: "lbl_y".tr,
                style: CustomTextStyles.bodyMediumPoppinsff504de5,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 13.v,
              width: 10.h,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_eastlake_ohio2".tr,
                      style: CustomTextStyles.bodyMediumPoppinsff6f8ba413,
                    ),
                    TextSpan(
                      text: "lbl_5".tr,
                      style: CustomTextStyles.bodyMediumPoppinsff6f8ba4,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String textValue,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSignalGray300,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Text(
              textValue,
              style: CustomTextStyles.bodyLargeInterGray300.copyWith(
                color: appTheme.gray300,
              ),
            ),
          ),
        ],
      ),
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
