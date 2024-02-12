import 'package:aayan_mateen_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconGray500,
      activeIcon: ImageConstant.imgIconGray500,
      type: BottomBarEnum.Icongray500,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconGray50023x26,
      activeIcon: ImageConstant.imgIconGray50023x26,
      type: BottomBarEnum.Icongray50023x26,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchBlue50,
      activeIcon: ImageConstant.imgSearchBlue50,
      type: BottomBarEnum.Searchblue50,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconGray50023x24,
      activeIcon: ImageConstant.imgIconGray50023x24,
      type: BottomBarEnum.Icongray50023x24,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(29.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -2.37,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 23.v,
              width: 25.h,
              color: appTheme.gray500,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 59.adaptSize,
              width: 59.adaptSize,
              color: appTheme.blue50,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Icongray500,
  Icongray50023x26,
  Searchblue50,
  Icongray50023x24,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
