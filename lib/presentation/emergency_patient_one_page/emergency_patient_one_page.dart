import 'bloc/emergency_patient_one_bloc.dart';
import 'models/emergency_patient_one_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_drop_down.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmergencyPatientOnePage extends StatefulWidget {
  const EmergencyPatientOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  EmergencyPatientOnePageState createState() => EmergencyPatientOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EmergencyPatientOneBloc>(
      create: (context) => EmergencyPatientOneBloc(EmergencyPatientOneState(
        emergencyPatientOneModelObj: EmergencyPatientOneModel(),
      ))
        ..add(EmergencyPatientOneInitialEvent()),
      child: EmergencyPatientOnePage(),
    );
  }
}

class EmergencyPatientOnePageState extends State<EmergencyPatientOnePage>
    with AutomaticKeepAliveClientMixin<EmergencyPatientOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    right: 43.h,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "lbl_pay_to".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          right: 7.h,
                        ),
                        child: BlocSelector<EmergencyPatientOneBloc,
                            EmergencyPatientOneState, TextEditingController?>(
                          selector: (state) => state.paytovalueController,
                          builder: (context, paytovalueController) {
                            return CustomTextFormField(
                              controller: paytovalueController,
                              hintText: "msg_0213_1413_2242".tr,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 30.h,
                                vertical: 11.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillGray,
                              fillColor: appTheme.gray30001,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 52.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          right: 12.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildAmountSection(context),
                            _buildReasonSection(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                        text: "lbl_transfer_now".tr,
                        buttonStyle: CustomButtonStyles.outlineIndigoA,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAmountSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "lbl_amount".tr,
            style: theme.textTheme.labelMedium,
          ),
        ),
        SizedBox(height: 11.v),
        BlocSelector<EmergencyPatientOneBloc, EmergencyPatientOneState,
            EmergencyPatientOneModel?>(
          selector: (state) => state.emergencyPatientOneModelObj,
          builder: (context, emergencyPatientOneModelObj) {
            return CustomDropDown(
              width: 135.h,
              hintText: "lbl_400".tr,
              items: emergencyPatientOneModelObj?.dropdownItemList ?? [],
              onChanged: (value) {
                context
                    .read<EmergencyPatientOneBloc>()
                    .add(ChangeDropDownEvent(value: value));
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildReasonSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_reason".tr,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 11.v),
          BlocSelector<EmergencyPatientOneBloc, EmergencyPatientOneState,
              TextEditingController?>(
            selector: (state) => state.reasonvalueController,
            builder: (context, reasonvalueController) {
              return CustomTextFormField(
                width: 135.h,
                controller: reasonvalueController,
                hintText: "lbl_shopping".tr,
                hintStyle: theme.textTheme.labelMedium!,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 11.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGrayTL13,
                fillColor: appTheme.gray20004,
              );
            },
          ),
        ],
      ),
    );
  }
}
