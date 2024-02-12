import '../my_appointment_cancelled_page/widgets/appointmentcard_item_widget.dart';
import 'bloc/my_appointment_cancelled_bloc.dart';
import 'models/appointmentcard_item_model.dart';
import 'models/my_appointment_cancelled_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentCancelledPage extends StatefulWidget {
  const MyAppointmentCancelledPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyAppointmentCancelledPageState createState() =>
      MyAppointmentCancelledPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyAppointmentCancelledBloc>(
      create: (context) =>
          MyAppointmentCancelledBloc(MyAppointmentCancelledState(
        myAppointmentCancelledModelObj: MyAppointmentCancelledModel(),
      ))
            ..add(MyAppointmentCancelledInitialEvent()),
      child: MyAppointmentCancelledPage(),
    );
  }
}

class MyAppointmentCancelledPageState extends State<MyAppointmentCancelledPage>
    with AutomaticKeepAliveClientMixin<MyAppointmentCancelledPage> {
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
              SizedBox(height: 24.v),
              _buildAppointmentCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppointmentCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: BlocSelector<MyAppointmentCancelledBloc,
          MyAppointmentCancelledState, MyAppointmentCancelledModel?>(
        selector: (state) => state.myAppointmentCancelledModelObj,
        builder: (context, myAppointmentCancelledModelObj) {
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
            itemCount: myAppointmentCancelledModelObj
                    ?.appointmentcardItemList.length ??
                0,
            itemBuilder: (context, index) {
              AppointmentcardItemModel model = myAppointmentCancelledModelObj
                      ?.appointmentcardItemList[index] ??
                  AppointmentcardItemModel();
              return AppointmentcardItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
