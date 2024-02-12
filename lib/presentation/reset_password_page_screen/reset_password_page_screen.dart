import 'bloc/reset_password_page_bloc.dart';
import 'models/reset_password_page_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/core/utils/validation_functions.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordPageScreen extends StatelessWidget {
  ResetPasswordPageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordPageBloc>(
      create: (context) => ResetPasswordPageBloc(ResetPasswordPageState(
        resetPasswordPageModelObj: ResetPasswordPageModel(),
      ))
        ..add(ResetPasswordPageInitialEvent()),
      child: ResetPasswordPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordPageBloc, ResetPasswordPageState>(
      builder: (context, state) {
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
                    SizedBox(height: 58.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 118.v),
                          padding: EdgeInsets.symmetric(horizontal: 31.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSecureLogin,
                                height: 292.v,
                                width: 304.h,
                                alignment: Alignment.center,
                              ),
                              SizedBox(height: 72.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 36.h),
                                  child: Text(
                                    "lbl_reset_password".tr,
                                    style: theme.textTheme.headlineLarge,
                                  ),
                                ),
                              ),
                              SizedBox(height: 35.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 46.h,
                                  right: 11.h,
                                ),
                                child: BlocSelector<
                                    ResetPasswordPageBloc,
                                    ResetPasswordPageState,
                                    TextEditingController?>(
                                  selector: (state) =>
                                      state.newpasswordController,
                                  builder: (context, newpasswordController) {
                                    return CustomFloatingTextField(
                                      controller: newpasswordController,
                                      labelText: "lbl_new_password".tr,
                                      labelStyle: CustomTextStyles
                                          .bodySmallPoppinsBluegray200,
                                      hintText: "lbl_new_password".tr,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
                                      prefix: Container(
                                        margin: EdgeInsets.only(
                                          left: 1.h,
                                          right: 24.h,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgLockBlueGray90001,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        maxHeight: 51.v,
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 19.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 44.h,
                                  right: 13.h,
                                ),
                                child: BlocSelector<
                                    ResetPasswordPageBloc,
                                    ResetPasswordPageState,
                                    TextEditingController?>(
                                  selector: (state) =>
                                      state.confirmpasswordController,
                                  builder:
                                      (context, confirmpasswordController) {
                                    return CustomFloatingTextField(
                                      controller: confirmpasswordController,
                                      labelText: "msg_confirm_password".tr,
                                      labelStyle: CustomTextStyles
                                          .bodySmallPoppinsBluegray200,
                                      hintText: "msg_confirm_password".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
                                      prefix: Container(
                                        margin: EdgeInsets.only(right: 24.h),
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgLockBlueGray90001,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                        ),
                                      ),
                                      prefixConstraints: BoxConstraints(
                                        maxHeight: 51.v,
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 105.v),
                              CustomElevatedButton(
                                height: 50.v,
                                text: "lbl_change_password".tr,
                                margin: EdgeInsets.only(right: 2.h),
                                buttonStyle: CustomButtonStyles.fillBlueA,
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
      },
    );
  }
}
