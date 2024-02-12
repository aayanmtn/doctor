import '../faq_screen/widgets/whatshouldiexpect_item_widget.dart';import 'bloc/faq_bloc.dart';import 'models/faq_model.dart';import 'models/whatshouldiexpect_item_model.dart';import 'package:aayan_mateen_s_application1/core/app_export.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_subtitle_five.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class FaqScreen extends StatelessWidget {const FaqScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FaqBloc>(create: (context) => FaqBloc(FaqState(faqModelObj: FaqModel()))..add(FaqInitialEvent()), child: FaqScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 24.v), child: Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildWhatShouldIExpect(context), SizedBox(height: 12.v), _buildFrame(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgArrowLeftGray90002, margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleFive(text: "lbl_faq".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgBack, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v))]); } 
/// Section Widget
Widget _buildWhatShouldIExpect(BuildContext context) { return BlocSelector<FaqBloc, FaqState, FaqModel?>(selector: (state) => state.faqModelObj, builder: (context, faqModelObj) {return ListView.builder(shrinkWrap: true, itemCount: faqModelObj?.whatshouldiexpectItemList.length ?? 0, itemBuilder: (context, index) {WhatshouldiexpectItemModel model = faqModelObj?.whatshouldiexpectItemList[index] ?? WhatshouldiexpectItemModel(); return WhatshouldiexpectItemWidget(model, onSelectedExpandableList: (value) {context.read<FaqBloc>().add(UpdateExpandableListEvent(index: index, isSelected: value));});});}); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(padding: EdgeInsets.only(top: 12.v, bottom: 11.v), decoration: AppDecoration.outlineGray, child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Container(width: 306.h, margin: EdgeInsets.only(bottom: 4.v), child: Text("msg_what_should_i_expect".tr, maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.40)))), CustomImageView(imagePath: ImageConstant.imgChevronLeftGray90002, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 5.h, top: 12.v, bottom: 16.v))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }