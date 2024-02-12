import 'bloc/offline_bloc.dart';
import 'models/offline_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class OfflineScreen extends StatelessWidget {
  OfflineScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<OfflineBloc>(
      create: (context) => OfflineBloc(OfflineState(
        offlineModelObj: OfflineModel(),
      ))
        ..add(OfflineInitialEvent()),
      child: OfflineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfflineBloc, OfflineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 415.h,
              padding: EdgeInsets.symmetric(horizontal: 58.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImte2,
                    height: 228.v,
                    width: 258.h,
                  ),
                  SizedBox(height: 41.v),
                  Padding(
                    padding: EdgeInsets.only(left: 47.h),
                    child: Text(
                      "msg_no_network_connection".tr,
                      style:
                          CustomTextStyles.titleMediumOverpassPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 69.v),
                  Padding(
                    padding: EdgeInsets.only(left: 100.h),
                    child: Text(
                      "lbl_try_again".tr,
                      style: CustomTextStyles.titleSmallOverpassPrimary,
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(right: 40.h),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
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
