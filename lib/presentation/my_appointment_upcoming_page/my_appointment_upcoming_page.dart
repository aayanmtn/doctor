import '../my_appointment_upcoming_page/widgets/doctorcard1_item_widget.dart';
import 'bloc/my_appointment_upcoming_bloc.dart';
import 'models/doctorcard1_item_model.dart';
import 'models/my_appointment_upcoming_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentUpcomingPage extends StatefulWidget {
  const MyAppointmentUpcomingPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyAppointmentUpcomingPageState createState() =>
      MyAppointmentUpcomingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyAppointmentUpcomingBloc>(
      create: (context) => MyAppointmentUpcomingBloc(MyAppointmentUpcomingState(
        myAppointmentUpcomingModelObj: MyAppointmentUpcomingModel(),
      ))
        ..add(MyAppointmentUpcomingInitialEvent()),
      child: MyAppointmentUpcomingPage(),
    );
  }
}

class MyAppointmentUpcomingPageState extends State<MyAppointmentUpcomingPage>
    with AutomaticKeepAliveClientMixin<MyAppointmentUpcomingPage> {
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
              _buildDoctorCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: BlocSelector<MyAppointmentUpcomingBloc, MyAppointmentUpcomingState,
          MyAppointmentUpcomingModel?>(
        selector: (state) => state.myAppointmentUpcomingModelObj,
        builder: (context, myAppointmentUpcomingModelObj) {
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
            itemCount:
                myAppointmentUpcomingModelObj?.doctorcard1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Doctorcard1ItemModel model =
                  myAppointmentUpcomingModelObj?.doctorcard1ItemList[index] ??
                      Doctorcard1ItemModel();
              return Doctorcard1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
