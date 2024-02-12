import '../inbox_one_screen/widgets/userprofile_item_widget.dart';import 'bloc/inbox_one_bloc.dart';import 'models/inbox_one_model.dart';import 'models/userprofile_item_model.dart';import 'package:aayan_mateen_s_application1/core/app_export.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_subtitle_five.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:aayan_mateen_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:aayan_mateen_s_application1/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class InboxOneScreen extends StatelessWidget {const InboxOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<InboxOneBloc>(create: (context) => InboxOneBloc(InboxOneState(inboxOneModelObj: InboxOneModel()))..add(InboxOneInitialEvent()), child: InboxOneScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v), child: Column(children: [_buildFrame(context), SizedBox(height: 24.v), _buildUserProfile(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftGray90002, margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleFive(text: "lbl_message".tr), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgPlus, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v))]); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: BlocSelector<InboxOneBloc, InboxOneState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "lbl_search_message".tr, hintStyle: CustomTextStyles.labelLargeManropeGray50001, borderDecoration: SearchViewStyleHelper.fillGray, fillColor: appTheme.gray10001);})), CustomImageView(imagePath: ImageConstant.imgSettingsGray90002, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 12.h, top: 11.v, bottom: 11.v))]); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return BlocSelector<InboxOneBloc, InboxOneState, InboxOneModel?>(selector: (state) => state.inboxOneModelObj, builder: (context, inboxOneModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 6.v);}, itemCount: inboxOneModelObj?.userprofileItemList.length ?? 0, itemBuilder: (context, index) {UserprofileItemModel model = inboxOneModelObj?.userprofileItemList[index] ?? UserprofileItemModel(); return UserprofileItemWidget(model);});}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
