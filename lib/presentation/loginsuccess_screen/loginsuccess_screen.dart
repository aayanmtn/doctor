import 'bloc/loginsuccess_bloc.dart';
import 'models/loginsuccess_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginsuccessScreen extends StatelessWidget {
  const LoginsuccessScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginsuccessBloc>(
      create: (context) => LoginsuccessBloc(LoginsuccessState(
        loginsuccessModelObj: LoginsuccessModel(),
      ))
        ..add(LoginsuccessInitialEvent()),
      child: LoginsuccessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginsuccessBloc, LoginsuccessState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 439.h,
              child: Column(
                children: [
                  SizedBox(height: 201.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 66.v),
                        padding: EdgeInsets.symmetric(horizontal: 33.h),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTaddaaaImage,
                              height: 252.v,
                              width: 314.h,
                            ),
                            SizedBox(height: 72.v),
                            Text(
                              "msg_phone_number_verified".tr,
                              style: CustomTextStyles.titleLargeBlack90001_1,
                            ),
                            SizedBox(height: 41.v),
                            Container(
                              width: 298.h,
                              margin: EdgeInsets.only(
                                left: 34.h,
                                right: 40.h,
                              ),
                              child: Text(
                                "msg_congratulations".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeBluegray90001,
                              ),
                            ),
                            SizedBox(height: 162.v),
                            CustomElevatedButton(
                              height: 50.v,
                              text: "lbl_continue".tr,
                              margin: EdgeInsets.only(right: 7.h),
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
        );
      },
    );
  }
}
