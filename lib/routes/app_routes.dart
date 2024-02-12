import 'package:flutter/material.dart';
import 'package:aayan_mateen_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/walkthrough_two_screen/walkthrough_two_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/role_screen/role_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/loginsuccess_screen/loginsuccess_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/login_page_screen/login_page_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/forgot_password_page_screen/forgot_password_page_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/otp_page_screen/otp_page_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/reset_password_page_screen/reset_password_page_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/offline_screen/offline_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/rescheduled_details_screen/rescheduled_details_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/audio_screen/audio_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/video_screen/video_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/home_screen/home_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/emergency_patient_screen/emergency_patient_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/emergency_patient_one_tab_container_screen/emergency_patient_one_tab_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_completed_tab_container_screen/my_appointment_completed_tab_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/new_appointment_screen/new_appointment_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/custom_appointment_time_screen/custom_appointment_time_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/inbox_one_screen/inbox_one_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/inbox_conversation_screen/inbox_conversation_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/inbox_attach_files_screen/inbox_attach_files_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/home_one_screen/home_one_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/my_appointment_upcoming_tab_container_screen/my_appointment_upcoming_tab_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/home_two_screen/home_two_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/emergency_patient_two_tab_container_screen/emergency_patient_two_tab_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/upload_product_screen/upload_product_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/orders_tab_container_screen/orders_tab_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/search_medicines_screen/search_medicines_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_container_screen/search_doctors_one_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/search_doctors_screen/search_doctors_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/inbox_screen/inbox_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/inbox_conversation_one_screen/inbox_conversation_one_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/inbox_attach_files_one_screen/inbox_attach_files_one_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/detail_doctor_about_me_tab_container_screen/detail_doctor_about_me_tab_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/detail_doctor_address_tab_container_screen/detail_doctor_address_tab_container_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/productdetails_screen/productdetails_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/add_payment_method_screen/add_payment_method_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/address_screen/address_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/cartempty_screen/cartempty_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/nearby_pharmacy_screen/nearby_pharmacy_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/finish_order_screen/finish_order_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/settings_screen/settings_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/faq_screen/faq_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/history_screen/history_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/payment_screen/payment_screen.dart';
import 'package:aayan_mateen_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String walkthroughTwoScreen = '/walkthrough_two_screen';

  static const String roleScreen = '/role_screen';

  static const String loginsuccessScreen = '/loginsuccess_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String forgotPasswordPageScreen = '/forgot_password_page_screen';

  static const String otpPageScreen = '/otp_page_screen';

  static const String resetPasswordPageScreen = '/reset_password_page_screen';

  static const String offlineScreen = '/offline_screen';

  static const String rescheduledDetailsScreen = '/rescheduled_details_screen';

  static const String audioScreen = '/audio_screen';

  static const String videoScreen = '/video_screen';

  static const String homeScreen = '/home_screen';

  static const String emergencyPatientScreen = '/emergency_patient_screen';

  static const String emergencyPatientOnePage = '/emergency_patient_one_page';

  static const String emergencyPatientOneTabContainerScreen =
      '/emergency_patient_one_tab_container_screen';

  static const String myAppointmentUpcomingOnePage =
      '/my_appointment_upcoming_one_page';

  static const String myAppointmentCompletedPage =
      '/my_appointment_completed_page';

  static const String myAppointmentCompletedTabContainerScreen =
      '/my_appointment_completed_tab_container_screen';

  static const String myAppointmentCancelledPage =
      '/my_appointment_cancelled_page';

  static const String newAppointmentScreen = '/new_appointment_screen';

  static const String customAppointmentTimeScreen =
      '/custom_appointment_time_screen';

  static const String inboxOneScreen = '/inbox_one_screen';

  static const String inboxConversationScreen = '/inbox_conversation_screen';

  static const String inboxAttachFilesScreen = '/inbox_attach_files_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String myAppointmentUpcomingPage =
      '/my_appointment_upcoming_page';

  static const String myAppointmentUpcomingTabContainerScreen =
      '/my_appointment_upcoming_tab_container_screen';

  static const String myAppointmentCompletedOnePage =
      '/my_appointment_completed_one_page';

  static const String myAppointmentCancelledOnePage =
      '/my_appointment_cancelled_one_page';

  static const String homeTwoScreen = '/home_two_screen';

  static const String emergencyPatientTwoPage = '/emergency_patient_two_page';

  static const String emergencyPatientTwoTabContainerScreen =
      '/emergency_patient_two_tab_container_screen';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String uploadProductScreen = '/upload_product_screen';

  static const String ordersPage = '/orders_page';

  static const String ordersTabContainerScreen = '/orders_tab_container_screen';

  static const String searchMedicinesScreen = '/search_medicines_screen';

  static const String searchDoctorsOnePage = '/search_doctors_one_page';

  static const String searchDoctorsOneContainerScreen =
      '/search_doctors_one_container_screen';

  static const String searchDoctorsScreen = '/search_doctors_screen';

  static const String inboxScreen = '/inbox_screen';

  static const String inboxConversationOneScreen =
      '/inbox_conversation_one_screen';

  static const String inboxAttachFilesOneScreen =
      '/inbox_attach_files_one_screen';

  static const String detailDoctorAboutMePage = '/detail_doctor_about_me_page';

  static const String detailDoctorAboutMeTabContainerScreen =
      '/detail_doctor_about_me_tab_container_screen';

  static const String detailDoctorAddressPage = '/detail_doctor_address_page';

  static const String detailDoctorAddressTabContainerScreen =
      '/detail_doctor_address_tab_container_screen';

  static const String detailDoctorReviewPage = '/detail_doctor_review_page';

  static const String productdetailsScreen = '/productdetails_screen';

  static const String cartScreen = '/cart_screen';

  static const String addPaymentMethodScreen = '/add_payment_method_screen';

  static const String addressScreen = '/address_screen';

  static const String cartemptyScreen = '/cartempty_screen';

  static const String nearbyPharmacyScreen = '/nearby_pharmacy_screen';

  static const String finishOrderScreen = '/finish_order_screen';

  static const String settingsScreen = '/settings_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String faqScreen = '/faq_screen';

  static const String historyScreen = '/history_screen';

  static const String paymentScreen = '/payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        walkthroughTwoScreen: WalkthroughTwoScreen.builder,
        roleScreen: RoleScreen.builder,
        loginsuccessScreen: LoginsuccessScreen.builder,
        loginPageScreen: LoginPageScreen.builder,
        signUpPageScreen: SignUpPageScreen.builder,
        forgotPasswordPageScreen: ForgotPasswordPageScreen.builder,
        otpPageScreen: OtpPageScreen.builder,
        resetPasswordPageScreen: ResetPasswordPageScreen.builder,
        offlineScreen: OfflineScreen.builder,
        rescheduledDetailsScreen: RescheduledDetailsScreen.builder,
        audioScreen: AudioScreen.builder,
        videoScreen: VideoScreen.builder,
        homeScreen: HomeScreen.builder,
        emergencyPatientScreen: EmergencyPatientScreen.builder,
        emergencyPatientOneTabContainerScreen:
            EmergencyPatientOneTabContainerScreen.builder,
        myAppointmentCompletedTabContainerScreen:
            MyAppointmentCompletedTabContainerScreen.builder,
        newAppointmentScreen: NewAppointmentScreen.builder,
        customAppointmentTimeScreen: CustomAppointmentTimeScreen.builder,
        inboxOneScreen: InboxOneScreen.builder,
        inboxConversationScreen: InboxConversationScreen.builder,
        inboxAttachFilesScreen: InboxAttachFilesScreen.builder,
        homeOneScreen: HomeOneScreen.builder,
        myAppointmentUpcomingTabContainerScreen:
            MyAppointmentUpcomingTabContainerScreen.builder,
        homeTwoScreen: HomeTwoScreen.builder,
        emergencyPatientTwoTabContainerScreen:
            EmergencyPatientTwoTabContainerScreen.builder,
        pharmacyScreen: PharmacyScreen.builder,
        uploadProductScreen: UploadProductScreen.builder,
        ordersTabContainerScreen: OrdersTabContainerScreen.builder,
        searchMedicinesScreen: SearchMedicinesScreen.builder,
        searchDoctorsOneContainerScreen:
            SearchDoctorsOneContainerScreen.builder,
        searchDoctorsScreen: SearchDoctorsScreen.builder,
        inboxScreen: InboxScreen.builder,
        inboxConversationOneScreen: InboxConversationOneScreen.builder,
        inboxAttachFilesOneScreen: InboxAttachFilesOneScreen.builder,
        detailDoctorAboutMeTabContainerScreen:
            DetailDoctorAboutMeTabContainerScreen.builder,
        detailDoctorAddressTabContainerScreen:
            DetailDoctorAddressTabContainerScreen.builder,
        productdetailsScreen: ProductdetailsScreen.builder,
        cartScreen: CartScreen.builder,
        addPaymentMethodScreen: AddPaymentMethodScreen.builder,
        addressScreen: AddressScreen.builder,
        cartemptyScreen: CartemptyScreen.builder,
        nearbyPharmacyScreen: NearbyPharmacyScreen.builder,
        finishOrderScreen: FinishOrderScreen.builder,
        settingsScreen: SettingsScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        termsAndConditionsScreen: TermsAndConditionsScreen.builder,
        faqScreen: FaqScreen.builder,
        historyScreen: HistoryScreen.builder,
        paymentScreen: PaymentScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
