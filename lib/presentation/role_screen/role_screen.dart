import 'bloc/role_bloc.dart';
import 'models/role_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_icon_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class RoleScreen extends StatelessWidget {
  const RoleScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RoleBloc>(
      create: (context) => RoleBloc(RoleState(
        roleModelObj: RoleModel(),
      ))
        ..add(RoleInitialEvent()),
      child: RoleScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 33.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrame505,
                height: 213.v,
                width: 307.h,
              ),
              SizedBox(height: 43.v),
              Text(
                "msg_tailor_your_experience".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 46.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 241.h,
                  margin: EdgeInsets.only(
                    left: 28.h,
                    right: 46.h,
                  ),
                  child: Text(
                    "msg_to_provide_you".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              SizedBox(height: 69.v),
              _buildRoleRadioGroup(context),
              SizedBox(height: 33.v),
              CustomIconButton(
                height: 37.adaptSize,
                width: 37.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.fillPrimary,
                alignment: Alignment.centerRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRoleRadioGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 72.h,
        right: 68.h,
      ),
      child: BlocBuilder<RoleBloc, RoleState>(
        builder: (context, state) {
          return state.roleModelObj!.radioList.isNotEmpty
              ? Column(
                  children: [
                    CustomRadioButton(
                      text: "lbl_i_am_a_patient".tr,
                      value: state.roleModelObj?.radioList[0] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<RoleBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 23.v,
                        right: 2.h,
                      ),
                      child: CustomRadioButton(
                        text: "lbl_i_am_a_doctor".tr,
                        value: state.roleModelObj?.radioList[1] ?? "",
                        groupValue: state.radioGroup,
                        onChange: (value) {
                          context
                              .read<RoleBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 22.v,
                        right: 3.h,
                      ),
                      child: CustomRadioButton(
                        text: "lbl_i_am_a_pharm".tr,
                        value: state.roleModelObj?.radioList[2] ?? "",
                        groupValue: state.radioGroup,
                        onChange: (value) {
                          context
                              .read<RoleBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        },
                      ),
                    ),
                  ],
                )
              : Container();
        },
      ),
    );
  }
}
