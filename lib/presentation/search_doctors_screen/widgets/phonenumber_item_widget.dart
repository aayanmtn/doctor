import '../models/phonenumber_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PhonenumberItemWidget extends StatelessWidget {
  PhonenumberItemWidget(
    this.phonenumberItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  PhonenumberItemModel phonenumberItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          phonenumberItemModelObj.phoneNumber!,
          style: TextStyle(
            color: appTheme.blueGray40001,
            fontSize: 13.287805557250977.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgCallIndigoA400,
          height: 15.adaptSize,
          width: 15.adaptSize,
          margin: EdgeInsets.only(right: 10.h),
        ),
        selected: (phonenumberItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
