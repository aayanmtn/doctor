import 'bloc/edit_profile_bloc.dart';import 'models/edit_profile_model.dart';import 'package:aayan_mateen_s_application1/core/app_export.dart';import 'package:aayan_mateen_s_application1/core/utils/validation_functions.dart';import 'package:aayan_mateen_s_application1/presentation/search_doctors_one_page/search_doctors_one_page.dart';import 'package:aayan_mateen_s_application1/widgets/custom_bottom_bar.dart';import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';import 'package:aayan_mateen_s_application1/widgets/custom_icon_button.dart';import 'package:aayan_mateen_s_application1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {EditProfileScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<EditProfileBloc>(create: (context) => EditProfileBloc(EditProfileState(editProfileModelObj: EditProfileModel()))..add(EditProfileInitialEvent()), child: EditProfileScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: SizedBox(height: 742.v, width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 51.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL25), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgImage63x63, height: 79.adaptSize, width: 79.adaptSize), SizedBox(height: 9.v), Text("lbl_muhammad_haris".tr, style: CustomTextStyles.titleMediumPoppinsBluegray700), SizedBox(height: 2.v), Text("lbl_muhiris2".tr, style: CustomTextStyles.bodySmallPoppinsBluegray40001), SizedBox(height: 98.v), _buildUserProfile(context), SizedBox(height: 24.v), _buildEmailField(context), SizedBox(height: 24.v), _buildPasswordField(context), SizedBox(height: 48.v), _buildDoneButton(context), SizedBox(height: 48.v)]))), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 15.h, right: 125.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgIconLeft, height: 5.v, width: 16.h, margin: EdgeInsets.only(bottom: 3.v)), Text("lbl_edit_profile".tr, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumPoppinsWhiteA700)])), SizedBox(height: 19.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 17.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 33.adaptSize, width: 33.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.outlineGrayTL101, onTap: () {onTapBtnArrowLeft(context);}, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftBlueGray90003)), Padding(padding: EdgeInsets.only(top: 6.v, bottom: 7.v), child: Text("lbl_edit_profile2".tr.toUpperCase(), style: CustomTextStyles.titleSmallBeVietnamProBlack90001))])))])))]))))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return BlocSelector<EditProfileBloc, EditProfileState, TextEditingController?>(selector: (state) => state.userProfileController, builder: (context, userProfileController) {return CustomTextFormField(controller: userProfileController, hintText: "lbl_user_name".tr, hintStyle: CustomTextStyles.bodyMediumPoppinsBluegray700_1, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.underLineBlueGray2, filled: false);}); } 
/// Section Widget
Widget _buildEmailField(BuildContext context) { return BlocSelector<EditProfileBloc, EditProfileState, TextEditingController?>(selector: (state) => state.emailFieldController, builder: (context, emailFieldController) {return CustomTextFormField(controller: emailFieldController, hintText: "msg_piff_jenkins_com".tr, hintStyle: CustomTextStyles.bodyMediumPoppinsBluegray40001_1, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.symmetric(vertical: 1.v), borderDecoration: TextFormFieldStyleHelper.underLineBlueGray2, filled: false);}); } 
/// Section Widget
Widget _buildPasswordField(BuildContext context) { return BlocSelector<EditProfileBloc, EditProfileState, TextEditingController?>(selector: (state) => state.passwordFieldController, builder: (context, passwordFieldController) {return CustomTextFormField(controller: passwordFieldController, hintText: "lbl_reset_password2".tr, hintStyle: CustomTextStyles.bodyMediumPoppinsBluegray700_1, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, borderDecoration: TextFormFieldStyleHelper.underLineBlueGray2, filled: false);}); } 
/// Section Widget
Widget _buildDoneButton(BuildContext context) { return CustomElevatedButton(text: "lbl_done".tr, margin: EdgeInsets.only(left: 19.h, right: 21.h), buttonStyle: CustomButtonStyles.outlineIndigoATL20, buttonTextStyle: CustomTextStyles.titleMediumMontserratWhiteA700); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Icongray500: return "/"; case BottomBarEnum.Icongray50023x26: return "/"; case BottomBarEnum.Searchblue50: return AppRoutes.searchDoctorsOnePage; case BottomBarEnum.Icongray50023x24: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.searchDoctorsOnePage: return SearchDoctorsOnePage.builder(context); default: return DefaultWidget();} } 

/// Navigates to the previous screen.
onTapBtnArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
