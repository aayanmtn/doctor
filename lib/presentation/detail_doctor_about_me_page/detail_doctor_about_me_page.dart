import '../detail_doctor_about_me_page/widgets/experiencesection_item_widget.dart';
import 'bloc/detail_doctor_about_me_bloc.dart';
import 'models/detail_doctor_about_me_model.dart';
import 'models/experiencesection_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DetailDoctorAboutMePage extends StatefulWidget {
  const DetailDoctorAboutMePage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailDoctorAboutMePageState createState() => DetailDoctorAboutMePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DetailDoctorAboutMeBloc>(
      create: (context) => DetailDoctorAboutMeBloc(DetailDoctorAboutMeState(
        detailDoctorAboutMeModelObj: DetailDoctorAboutMeModel(),
      ))
        ..add(DetailDoctorAboutMeInitialEvent()),
      child: DetailDoctorAboutMePage(),
    );
  }
}

class DetailDoctorAboutMePageState extends State<DetailDoctorAboutMePage>
    with AutomaticKeepAliveClientMixin<DetailDoctorAboutMePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildExperienceSection(context),
                      SizedBox(height: 23.v),
                      Text(
                        "lbl_about_me".tr,
                        style: CustomTextStyles.titleMediumSemiBold_1,
                      ),
                      SizedBox(height: 15.v),
                      SizedBox(
                        width: 327.h,
                        child: Text(
                          "msg_dr_jenny_watson".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray60002.copyWith(
                            height: 1.80,
                          ),
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "lbl_working_time".tr,
                        style: CustomTextStyles.titleMediumSemiBold_1,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_monday_friday".tr,
                        style: CustomTextStyles.bodyMediumGray60002,
                      ),
                      SizedBox(height: 89.v),
                      CustomElevatedButton(
                        text: "msg_make_an_appointment".tr,
                        buttonStyle: CustomButtonStyles.fillBlueATL16,
                        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      ),
                    ],
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
  Widget _buildExperienceSection(BuildContext context) {
    return SizedBox(
      height: 112.v,
      child: BlocSelector<DetailDoctorAboutMeBloc, DetailDoctorAboutMeState,
          DetailDoctorAboutMeModel?>(
        selector: (state) => state.detailDoctorAboutMeModelObj,
        builder: (context, detailDoctorAboutMeModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 20.h,
              );
            },
            itemCount:
                detailDoctorAboutMeModelObj?.experiencesectionItemList.length ??
                    0,
            itemBuilder: (context, index) {
              ExperiencesectionItemModel model = detailDoctorAboutMeModelObj
                      ?.experiencesectionItemList[index] ??
                  ExperiencesectionItemModel();
              return ExperiencesectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
