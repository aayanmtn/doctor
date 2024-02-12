import '../models/productcard_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray20002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 158.v,
            width: 175.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 158.v,
                    width: 174.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 18.v,
                    ),
                    decoration: AppDecoration.fillGray10004.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgProductImage,
                      height: 119.v,
                      width: 130.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(right: 110.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 2.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgSaleTag,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.v),
                        SizedBox(
                          width: 29.h,
                          child: Text(
                            productcardItemModelObj.saleText!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.labelLargeOverpassWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 108.h,
            margin: EdgeInsets.only(left: 18.h),
            child: Text(
              productcardItemModelObj.accuCheckActive!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  CustomTextStyles.bodyMediumOverpassBluegray9000113.copyWith(
                height: 1.46,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 157.h,
              margin: EdgeInsets.only(left: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      productcardItemModelObj.priceText!,
                      style: CustomTextStyles
                          .titleMediumOverpassBluegray90001SemiBold,
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: appTheme.amberA400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderTL201,
                    ),
                    child: Container(
                      height: 24.v,
                      width: 54.h,
                      decoration: AppDecoration.fillAmberA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL201,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSignalWhiteA700,
                                    height: 12.v,
                                    width: 16.h,
                                    margin: EdgeInsets.symmetric(vertical: 2.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text(
                                      productcardItemModelObj.ratingText1!,
                                      style: CustomTextStyles
                                          .labelLargeOverpassWhiteA700Bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 54.h,
                              padding: EdgeInsets.symmetric(vertical: 2.v),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL201,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgSignalWhiteA700,
                                    height: 12.v,
                                    width: 16.h,
                                    margin: EdgeInsets.only(
                                      top: 2.v,
                                      bottom: 4.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      productcardItemModelObj.ratingText2!,
                                      style: CustomTextStyles
                                          .labelLargeOverpassWhiteA700Bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
