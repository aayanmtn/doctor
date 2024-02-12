import '../search_doctors_one_page/widgets/userprofile1_item_widget.dart';
import 'bloc/search_doctors_one_bloc.dart';
import 'models/search_doctors_one_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_search_view.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchDoctorsOnePage extends StatelessWidget {
  const SearchDoctorsOnePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchDoctorsOneBloc>(
      create: (context) => SearchDoctorsOneBloc(SearchDoctorsOneState(
        searchDoctorsOneModelObj: SearchDoctorsOneModel(),
      ))
        ..add(SearchDoctorsOneInitialEvent()),
      child: SearchDoctorsOnePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 33.h,
                      right: 20.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BlocSelector<SearchDoctorsOneBloc,
                              SearchDoctorsOneState, TextEditingController?>(
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
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        right: 31.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildFrame(context),
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
                  _buildUserProfile(context),
                ],
              ),
            ),
          ),
        ),
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
    return BlocSelector<SearchDoctorsOneBloc, SearchDoctorsOneState,
        TextEditingController?>(
      selector: (state) => state.frameController,
      builder: (context, frameController) {
        return CustomTextFormField(
          width: 70.h,
          controller: frameController,
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: BlocSelector<SearchDoctorsOneBloc, SearchDoctorsOneState,
          SearchDoctorsOneModel?>(
        selector: (state) => state.searchDoctorsOneModelObj,
        builder: (context, searchDoctorsOneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
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
                searchDoctorsOneModelObj?.userprofile1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model =
                  searchDoctorsOneModelObj?.userprofile1ItemList[index] ??
                      Userprofile1ItemModel();
              return Userprofile1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
