import '../models/widget_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  WidgetItemWidget(
    this.widgetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WidgetItemModel widgetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage19,
      height: 156.v,
      width: 131.h,
      radius: BorderRadius.circular(
        10.h,
      ),
      margin: EdgeInsets.fromLTRB(98.h, 5.v, 98.h, 3.v),
    );
  }
}
