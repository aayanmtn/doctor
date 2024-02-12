import 'bloc/orders_tab_container_bloc.dart';import 'models/orders_tab_container_model.dart';import 'package:aayan_mateen_s_application1/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/orders_page/orders_page.dart';import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_subtitle_five.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';class OrdersTabContainerScreen extends StatefulWidget {const OrdersTabContainerScreen({Key? key}) : super(key: key);

@override OrdersTabContainerScreenState createState() =>  OrdersTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<OrdersTabContainerBloc>(create: (context) => OrdersTabContainerBloc(OrdersTabContainerState(ordersTabContainerModelObj: OrdersTabContainerModel()))..add(OrdersTabContainerInitialEvent()), child: OrdersTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class OrdersTabContainerScreenState extends State<OrdersTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<OrdersTabContainerBloc, OrdersTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), _buildTabview(context), Expanded(child: SizedBox(height: 565.v, child: TabBarView(controller: tabviewController, children: [OrdersPage.builder(context), OrdersPage.builder(context), OrdersPage.builder(context)])))])), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgArrowLeftGray90002, margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleFive(text: "lbl_orders".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgBack, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 44.v, width: 327.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.blueA400, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.gray50001, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w700), indicator: BoxDecoration(border: Border(bottom: BorderSide(color: appTheme.blueA400, width: 2.h))), tabs: [Tab(child: Text("lbl_active".tr)), Tab(child: Text("lbl_rejected".tr)), Tab(child: Text("lbl_delivered".tr))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Icongray500: return "/"; case BottomBarEnum.Icongray50023x26: return "/"; case BottomBarEnum.Searchblue50: return AppRoutes.searchDoctorsOnePage; case BottomBarEnum.Icongray50023x24: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.searchDoctorsOnePage: return SearchDoctorsOnePage.builder(context); default: return DefaultWidget();} } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
