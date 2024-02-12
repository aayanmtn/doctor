import '../models/cartitem1_item_model.dart';
import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:aayan_mateen_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cartitem1ItemWidget extends StatelessWidget {
  Cartitem1ItemWidget(
    this.cartitem1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cartitem1ItemModel cartitem1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: cartitem1ItemModelObj?.image,
          height: 78.v,
          width: 70.h,
          radius: BorderRadius.circular(
            6.h,
          ),
          margin: EdgeInsets.only(bottom: 19.v),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 17.v,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartitem1ItemModelObj.title!,
                          style:
                              CustomTextStyles.titleSmallOverpassBluegray90001,
                        ),
                        Text(
                          cartitem1ItemModelObj.description!,
                          style: CustomTextStyles
                              .bodyMediumOverpassBluegray9000113_1,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 19.v),
                      child: CustomIconButton(
                        height: 20.v,
                        width: 19.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCloseBlack90001,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Text(
                        cartitem1ItemModelObj.price!,
                        style:
                            CustomTextStyles.titleMediumOverpassBluegray90001,
                      ),
                    ),
                    Container(
                      decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillIndigo,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup78,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 11.h,
                              top: 3.v,
                              bottom: 7.v,
                            ),
                            child: Text(
                              cartitem1ItemModelObj.quantity!,
                              style: CustomTextStyles
                                  .titleMediumOverpassBlack90001,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: CustomIconButton(
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              decoration: IconButtonStyleHelper.fillIndigoA,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCloseWhiteA700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
