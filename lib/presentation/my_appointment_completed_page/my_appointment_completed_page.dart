import '../my_appointment_completed_page/widgets/doctorcardlist_item_widget.dart';
import 'bloc/my_appointment_completed_bloc.dart';
import 'models/doctorcardlist_item_model.dart';
import 'models/my_appointment_completed_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentCompletedPage extends StatefulWidget {
  const MyAppointmentCompletedPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyAppointmentCompletedPageState createState() =>
      MyAppointmentCompletedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyAppointmentCompletedBloc>(
      create: (context) =>
          MyAppointmentCompletedBloc(MyAppointmentCompletedState(
        myAppointmentCompletedModelObj: MyAppointmentCompletedModel(),
      ))
            ..add(MyAppointmentCompletedInitialEvent()),
      child: MyAppointmentCompletedPage(),
    );
  }
}

class MyAppointmentCompletedPageState extends State<MyAppointmentCompletedPage>
    with AutomaticKeepAliveClientMixin<MyAppointmentCompletedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 7.v),
              _buildDoctorCardList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorCardList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 8.h,
          right: 24.h,
        ),
        child: BlocSelector<MyAppointmentCompletedBloc,
            MyAppointmentCompletedState, MyAppointmentCompletedModel?>(
          selector: (state) => state.myAppointmentCompletedModelObj,
          builder: (context, myAppointmentCompletedModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 12.v,
                );
              },
              itemCount: myAppointmentCompletedModelObj
                      ?.doctorcardlistItemList.length ??
                  0,
              itemBuilder: (context, index) {
                DoctorcardlistItemModel model = myAppointmentCompletedModelObj
                        ?.doctorcardlistItemList[index] ??
                    DoctorcardlistItemModel();
                return DoctorcardlistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
