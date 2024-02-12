import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Walkthrough-Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.walkthroughTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Role".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.roleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "loginsuccess".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginsuccessScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign Up Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password Page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "OTP Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.otpPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Password Page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "offline".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.offlineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Rescheduled Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.rescheduledDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Audio".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.audioScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Video".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.videoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Emergency Patient".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.emergencyPatientScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Emergency Patient One - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .emergencyPatientOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "My Appointment / Completed - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .myAppointmentCompletedTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "New Appointment".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.newAppointmentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Custom Appointment Time".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.customAppointmentTimeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox / Conversation".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inboxConversationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox /  Attach Files".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inboxAttachFilesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "My Appointment / Upcoming - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .myAppointmentUpcomingTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Emergency Patient Two - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .emergencyPatientTwoTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Pharmacy".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.pharmacyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Upload Product".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.uploadProductScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Orders - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.ordersTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Medicines".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchMedicinesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Doctors One - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchDoctorsOneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Doctors".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchDoctorsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inboxScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox / Conversation One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inboxConversationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Inbox /  Attach Files One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inboxAttachFilesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Detail Doctor / About Me - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .detailDoctorAboutMeTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Detail Doctor / Address - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .detailDoctorAddressTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "productdetails".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productdetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "cart".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cartScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: " Add payment method".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addPaymentMethodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Address".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "cartEmpty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cartemptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Nearby Pharmacy".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.nearbyPharmacyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "1.26 Finish Order".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.finishOrderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Terms And Conditions".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.termsAndConditionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "FAQ Screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.faqScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "History".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.historyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentScreen),
                            ),
                          ],
                        ),
                      ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
