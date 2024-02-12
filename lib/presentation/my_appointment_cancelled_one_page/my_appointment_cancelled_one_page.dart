import '../my_appointment_cancelled_one_page/widgets/appointmentcardlist_item_widget.dart';
import 'bloc/my_appointment_cancelled_one_bloc.dart';
import 'models/appointmentcardlist_item_model.dart';
import 'models/my_appointment_cancelled_one_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAppointmentCancelledOnePage extends StatefulWidget {
  const MyAppointmentCancelledOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyAppointmentCancelledOnePageState createState() =>
      MyAppointmentCancelledOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyAppointmentCancelledOneBloc>(
      create: (context) =>
          MyAppointmentCancelledOneBloc(MyAppointmentCancelledOneState(
        myAppointmentCancelledOneModelObj: MyAppointmentCancelledOneModel(),
      ))
            ..add(MyAppointmentCancelledOneInitialEvent()),
      child: MyAppointmentCancelledOnePage(),
    );
  }
}

class MyAppointmentCancelledOnePageState
    extends State<MyAppointmentCancelledOnePage>
    with AutomaticKeepAliveClientMixin<MyAppointmentCancelledOnePage> {
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
              _buildAppointmentCardList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppointmentCardList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: BlocSelector<MyAppointmentCancelledOneBloc,
          MyAppointmentCancelledOneState, MyAppointmentCancelledOneModel?>(
        selector: (state) => state.myAppointmentCancelledOneModelObj,
        builder: (context, myAppointmentCancelledOneModelObj) {
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
            itemCount: myAppointmentCancelledOneModelObj
                    ?.appointmentcardlistItemList.length ??
                0,
            itemBuilder: (context, index) {
              AppointmentcardlistItemModel model =
                  myAppointmentCancelledOneModelObj
                          ?.appointmentcardlistItemList[index] ??
                      AppointmentcardlistItemModel();
              return AppointmentcardlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
