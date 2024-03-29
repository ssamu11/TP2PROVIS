import 'package:rafie_s_tp2/widgets/app_bar/custom_app_bar.dart';
import 'package:rafie_s_tp2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rafie_s_tp2/widgets/custom_search_view.dart';
import 'widgets/home_item_widget.dart';
import 'package:rafie_s_tp2/widgets/custom_outlined_button.dart';
import 'widgets/home1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rafie_s_tp2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 17.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Hi, John Doe, How are you?",
                  style: CustomTextStyles.labelLargeOverpassBluegray900,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 3.h,
                  right: 10.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search",
                ),
              ),
              SizedBox(height: 13.v),
              _buildHome(context),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Health Article",
                  style: CustomTextStyles.labelLargeOverpassBluegray900,
                ),
              ),
              SizedBox(height: 12.v),
              _buildSeventeen(context),
              SizedBox(height: 10.v),
              _buildHome1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 75.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGideonGoddardModified,
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        Container(
          height: 27.v,
          width: 24.h,
          margin: EdgeInsets.fromLTRB(19.h, 1.v, 19.h, 19.v),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    right: 2.h,
                    bottom: 18.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.red700,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTdesignNotification,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 3.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 7.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 77.v,
          crossAxisCount: 3,
          mainAxisSpacing: 9.h,
          crossAxisSpacing: 9.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return HomeItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 7.h,
      ),
      child: Row(
        children: [
          Container(
            width: 74.h,
            padding: EdgeInsets.all(5.h),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "Nutrition & Diet",
              style: theme.textTheme.labelSmall,
            ),
          ),
          Container(
            width: 74.h,
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "Active Lifestyle",
              style: theme.textTheme.labelSmall,
            ),
          ),
          CustomOutlinedButton(
            width: 74.h,
            text: "Mental Health",
            margin: EdgeInsets.only(left: 7.h),
          ),
          CustomOutlinedButton(
            width: 74.h,
            text: "Body Care",
            margin: EdgeInsets.only(left: 7.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Home1ItemWidget();
        },
      ),
    );
  }
}
