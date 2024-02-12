import '../models/productlist_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 123.v,
              width: 119.h,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.outlineGray20005.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: CustomImageView(
                imagePath: productlistItemModelObj?.productImage,
                height: 87.adaptSize,
                width: 87.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 6.v),
            SizedBox(
              width: 77.h,
              child: Text(
                productlistItemModelObj.productName!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style:
                    CustomTextStyles.titleSmallBeVietnamProGray900_1.copyWith(
                  height: 1.07,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            bottom: 16.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 130.v,
                width: 119.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 123.v,
                        width: 119.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                          border: Border.all(
                            color: appTheme.gray20005,
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: productlistItemModelObj?.productImage1,
                      height: 128.v,
                      width: 85.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 14.h),
                    ),
                  ],
                ),
              ),
              Text(
                productlistItemModelObj.categoryName!,
                style: CustomTextStyles.titleSmallBeVietnamProGray900_1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
