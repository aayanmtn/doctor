import '../orders_page/widgets/doctorcard2_item_widget.dart';
import 'bloc/orders_bloc.dart';
import 'models/doctorcard2_item_model.dart';
import 'models/orders_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrdersPageState createState() => OrdersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersBloc>(
      create: (context) => OrdersBloc(OrdersState(
        ordersModelObj: OrdersModel(),
      ))
        ..add(OrdersInitialEvent()),
      child: OrdersPage(),
    );
  }
}

class OrdersPageState extends State<OrdersPage>
    with AutomaticKeepAliveClientMixin<OrdersPage> {
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
              _buildDoctorCard1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorCard1(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 6.h,
        ),
        child: BlocSelector<OrdersBloc, OrdersState, OrdersModel?>(
          selector: (state) => state.ordersModelObj,
          builder: (context, ordersModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 12.v,
                );
              },
              itemCount: ordersModelObj?.doctorcard2ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Doctorcard2ItemModel model =
                    ordersModelObj?.doctorcard2ItemList[index] ??
                        Doctorcard2ItemModel();
                return Doctorcard2ItemWidget(
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
