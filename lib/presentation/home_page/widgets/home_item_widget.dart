import 'package:flutter/material.dart';
import 'package:rafie_s_tp2/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 45.adaptSize,
            width: 45.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage21,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage21,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          SizedBox(
            height: 11.v,
            width: 57.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Mental Health",
                    style: theme.textTheme.labelSmall,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Mental Health",
                    style: theme.textTheme.labelSmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
