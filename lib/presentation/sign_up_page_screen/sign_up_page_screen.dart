import 'bloc/sign_up_page_bloc.dart';
import 'models/sign_up_page_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/core/utils/validation_functions.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpPageBloc>(
      create: (context) => SignUpPageBloc(SignUpPageState(
        signUpPageModelObj: SignUpPageModel(),
      ))
        ..add(SignUpPageInitialEvent()),
      child: SignUpPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 430.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 41.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 64.v),
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgReferAFriend,
                            height: 249.v,
                            width: 297.h,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 48.v),
                          Text(
                            "lbl_sign_up".tr,
                            style: CustomTextStyles
                                .displaySmallMontserratBlack90001,
                          ),
                          SizedBox(height: 27.v),
                          Container(
                            height: 62.v,
                            width: 311.h,
                            margin: EdgeInsets.only(left: 13.h),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "lbl_name".tr,
                                    style: CustomTextStyles.bodyLargeBlack90001,
                                  ),
                                ),
                                _buildSignUpForm(context),
                              ],
                            ),
                          ),
                          SizedBox(height: 14.v),
                          _buildEmailField(context),
                          SizedBox(height: 14.v),
                          _buildPasswordField(context),
                          SizedBox(height: 14.v),
                          _buildConfirmPasswordField(context),
                          SizedBox(height: 18.v),
                          Container(
                            width: 326.h,
                            margin: EdgeInsets.only(
                              left: 13.h,
                              right: 30.h,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_by_signing_up_you_re2".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsff6b6c70,
                                  ),
                                  TextSpan(
                                    text: "msg_terms_conditions".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsff367cff,
                                  ),
                                  TextSpan(
                                    text: "lbl_and".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsff6b6c70,
                                  ),
                                  TextSpan(
                                    text: "lbl_privacy_policy".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsff367cff,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          _buildContinueButton(context),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.only(left: 86.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_joined_us_before2".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsff6b6c70,
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsff6b6c70,
                                  ),
                                  TextSpan(
                                    text: "lbl_sign_in".tr,
                                    style: CustomTextStyles
                                        .labelLargePoppinsff3a7bc8,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpForm(BuildContext context) {
    return BlocSelector<SignUpPageBloc, SignUpPageState,
        TextEditingController?>(
      selector: (state) => state.signUpFormController,
      builder: (context, signUpFormController) {
        return CustomTextFormField(
          width: 311.h,
          controller: signUpFormController,
          hintText: "lbl_muhammad_haris".tr,
          hintStyle: CustomTextStyles.bodyMediumPoppinsBlack900,
          alignment: Alignment.bottomCenter,
          contentPadding: EdgeInsets.symmetric(vertical: 9.v),
          borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 45.h,
      ),
      child:
          BlocSelector<SignUpPageBloc, SignUpPageState, TextEditingController?>(
        selector: (state) => state.emailFieldController,
        builder: (context, emailFieldController) {
          return CustomTextFormField(
            controller: emailFieldController,
            hintText: "lbl_email".tr,
            hintStyle: CustomTextStyles.bodyMediumPoppinsBluegray90001,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(vertical: 10.v),
            borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 45.h,
      ),
      child: BlocBuilder<SignUpPageBloc, SignUpPageState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordFieldController,
            hintText: "lbl_password".tr,
            hintStyle: CustomTextStyles.bodyLargeBluegray90001,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpPageBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 18.v,
                  bottom: 18.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 10.v,
                  width: 16.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 51.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 10.v),
            borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 45.h,
      ),
      child: BlocBuilder<SignUpPageBloc, SignUpPageState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmPasswordFieldController,
            hintText: "msg_confirm_password".tr,
            hintStyle: CustomTextStyles.bodyLargeBluegray90001,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpPageBloc>().add(
                    ChangePasswordVisibilityEvent1(
                        value: !state.isShowPassword1));
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 18.v,
                  bottom: 18.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 10.v,
                  width: 16.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 51.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.symmetric(vertical: 9.v),
            borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 50.v,
      text: "lbl_continue".tr,
      margin: EdgeInsets.only(left: 3.h),
      buttonStyle: CustomButtonStyles.fillBlueA,
    );
  }
}
