import 'bloc/cartempty_bloc.dart';import 'models/cartempty_model.dart';import 'package:aayan_mateen_s_application1/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_leading_iconbutton_two.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_subtitle_two.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class CartemptyScreen extends StatelessWidget {CartemptyScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<CartemptyBloc>(create: (context) => CartemptyBloc(CartemptyState(cartemptyModelObj: CartemptyModel()))..add(CartemptyInitialEvent()), child: CartemptyScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<CartemptyBloc, CartemptyState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: 415.h, padding: EdgeInsets.symmetric(horizontal: 40.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgGroup6215, height: 267.v, width: 295.h), SizedBox(height: 47.v), Padding(padding: EdgeInsets.only(left: 122.h), child: Text("lbl_whoops".tr, style: CustomTextStyles.bodyLargeAbelPrimaryContainer)), SizedBox(height: 31.v), Padding(padding: EdgeInsets.only(left: 89.h), child: Text("msg_your_cart_is_empty".tr, style: CustomTextStyles.titleSmallOverpassPrimaryContainer)), SizedBox(height: 5.v)])), bottomNavigationBar: Padding(padding: EdgeInsets.only(right: 43.h), child: _buildBottomBar(context))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingIconbuttonTwo(imagePath: ImageConstant.imgArrowLeftBlueGray90003, margin: EdgeInsets.only(left: 8.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitleTwo(text: "lbl_back_to_home".tr, margin: EdgeInsets.only(left: 5.h))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Icongray500: return "/"; case BottomBarEnum.Icongray50023x26: return "/"; case BottomBarEnum.Searchblue50: return AppRoutes.searchDoctorsOnePage; case BottomBarEnum.Icongray50023x24: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.searchDoctorsOnePage: return SearchDoctorsOnePage.builder(context); default: return DefaultWidget();} } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
