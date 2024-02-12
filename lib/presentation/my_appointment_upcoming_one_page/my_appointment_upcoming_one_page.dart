import '../my_appointment_upcoming_one_page/widgets/doctorcard_item_widget.dart';
import 'bloc/my_appointment_upcoming_one_bloc.dart';
import 'models/doctorcard_item_model.dart';
import 'models/my_appointment_upcoming_one_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentUpcomingOnePage extends StatefulWidget {
  const MyAppointmentUpcomingOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyAppointmentUpcomingOnePageState createState() =>
      MyAppointmentUpcomingOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyAppointmentUpcomingOneBloc>(
      create: (context) =>
          MyAppointmentUpcomingOneBloc(MyAppointmentUpcomingOneState(
        myAppointmentUpcomingOneModelObj: MyAppointmentUpcomingOneModel(),
      ))
            ..add(MyAppointmentUpcomingOneInitialEvent()),
      child: MyAppointmentUpcomingOnePage(),
    );
  }
}

class MyAppointmentUpcomingOnePageState
    extends State<MyAppointmentUpcomingOnePage>
    with AutomaticKeepAliveClientMixin<MyAppointmentUpcomingOnePage> {
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
      child: BlocSelector<MyAppointmentUpcomingOneBloc,
          MyAppointmentUpcomingOneState, MyAppointmentUpcomingOneModel?>(
        selector: (state) => state.myAppointmentUpcomingOneModelObj,
        builder: (context, myAppointmentUpcomingOneModelObj) {
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
                myAppointmentUpcomingOneModelObj?.doctorcardItemList.length ??
                    0,
            itemBuilder: (context, index) {
              DoctorcardItemModel model =
                  myAppointmentUpcomingOneModelObj?.doctorcardItemList[index] ??
                      DoctorcardItemModel();
              return DoctorcardItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
