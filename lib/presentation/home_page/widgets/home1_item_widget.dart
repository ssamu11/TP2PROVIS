import 'package:flutter/material.dart';
import 'package:rafie_s_tp2/core/app_export.dart';

// ignore: must_be_immutable
class Home1ItemWidget extends StatelessWidget {
  const Home1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 164.h,
                margin: EdgeInsets.only(left: 1.h),
                child: Text(
                  "Menyelami Keajaiban Nutrisi Buah untuk Kesehatan Optimal",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelSmall,
                ),
              ),
              SizedBox(height: 2.v),
              SizedBox(
                height: 13.v,
                width: 62.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 13.v,
                      radius: BorderRadius.circular(
                        6.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nutrition & Diet",
                        style: CustomTextStyles.sFProDisplayWhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                width: 208.h,
                margin: EdgeInsets.only(left: 1.h),
                child: Text(
                  "Dalam perjalanan mencapai kesehatan yang optimal, memahami peran penting nutrisi buah adalah langkah pertama yang krusial. Buah-buahan tidak hanya menyegarkan, tetapi juga merupakan....",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.sFProDisplayBluegray900Regular,
                ),
              ),
              SizedBox(height: 2.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "See More",
                    style: CustomTextStyles.sFProDisplayBluegray900,
                  ),
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIntersect,
            height: 79.v,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(left: 3.h),
          ),
        ],
      ),
    );
  }
}
