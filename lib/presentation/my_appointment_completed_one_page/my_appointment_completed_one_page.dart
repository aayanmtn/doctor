import '../my_appointment_completed_one_page/widgets/doctorcardlist1_item_widget.dart';
import 'bloc/my_appointment_completed_one_bloc.dart';
import 'models/doctorcardlist1_item_model.dart';
import 'models/my_appointment_completed_one_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentCompletedOnePage extends StatefulWidget {
  const MyAppointmentCompletedOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyAppointmentCompletedOnePageState createState() =>
      MyAppointmentCompletedOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyAppointmentCompletedOneBloc>(
      create: (context) =>
          MyAppointmentCompletedOneBloc(MyAppointmentCompletedOneState(
        myAppointmentCompletedOneModelObj: MyAppointmentCompletedOneModel(),
      ))
            ..add(MyAppointmentCompletedOneInitialEvent()),
      child: MyAppointmentCompletedOnePage(),
    );
  }
}

class MyAppointmentCompletedOnePageState
    extends State<MyAppointmentCompletedOnePage>
    with AutomaticKeepAliveClientMixin<MyAppointmentCompletedOnePage> {
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
              _buildDoctorCardList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorCardList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: BlocSelector<MyAppointmentCompletedOneBloc,
          MyAppointmentCompletedOneState, MyAppointmentCompletedOneModel?>(
        selector: (state) => state.myAppointmentCompletedOneModelObj,
        builder: (context, myAppointmentCompletedOneModelObj) {
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
            itemCount: myAppointmentCompletedOneModelObj
                    ?.doctorcardlist1ItemList.length ??
                0,
            itemBuilder: (context, index) {
              Doctorcardlist1ItemModel model = myAppointmentCompletedOneModelObj
                      ?.doctorcardlist1ItemList[index] ??
                  Doctorcardlist1ItemModel();
              return Doctorcardlist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
