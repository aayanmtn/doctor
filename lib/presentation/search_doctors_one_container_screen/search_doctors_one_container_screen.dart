import 'bloc/search_doctors_one_container_bloc.dart';import 'models/search_doctors_one_container_model.dart';import 'package:aayan_mateen_s_application1/core/app_export.dart';import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class SearchDoctorsOneContainerScreen extends StatelessWidget {SearchDoctorsOneContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<SearchDoctorsOneContainerBloc>(create: (context) => SearchDoctorsOneContainerBloc(SearchDoctorsOneContainerState(searchDoctorsOneContainerModelObj: SearchDoctorsOneContainerModel()))..add(SearchDoctorsOneContainerInitialEvent()), child: SearchDoctorsOneContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<SearchDoctorsOneContainerBloc, SearchDoctorsOneContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.searchDoctorsOnePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Icongray500: return "/"; case BottomBarEnum.Icongray50023x26: return "/"; case BottomBarEnum.Searchblue50: return AppRoutes.searchDoctorsOnePage; case BottomBarEnum.Icongray50023x24: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.searchDoctorsOnePage: return SearchDoctorsOnePage.builder(context); default: return DefaultWidget();} } 
 }
