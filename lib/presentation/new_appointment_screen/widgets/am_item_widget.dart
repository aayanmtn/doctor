import '../models/am_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmItemWidget extends StatelessWidget {
  AmItemWidget(
    this.amItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  AmItemModel amItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        amItemModelObj.am!,
        style: TextStyle(
          color: (amItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.blueGray500,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (amItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.whiteA700,
      selectedColor: theme.colorScheme.primary,
      shape: (amItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray500.withOpacity(0.1),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
