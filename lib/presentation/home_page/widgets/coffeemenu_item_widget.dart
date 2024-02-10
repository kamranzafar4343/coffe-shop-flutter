import 'package:coffee_shop/core/app_export.dart';
import 'package:coffee_shop/widgets/custom_elevated_button.dart';
import 'package:coffee_shop/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoffeemenuItemWidget extends StatelessWidget {
  const CoffeemenuItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 132.v,
            width: 141.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1706,
                  height: 132.v,
                  width: 141.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 25.v,
                  width: 51.h,
                  text: "4.8",
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 2.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                    ),
                  ),
                  buttonTextStyle: theme.textTheme.labelMedium!,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Cappucino",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "with Chocolate",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  child: Text(
                    " 4.53",
                    style: CustomTextStyles.titleMediumErrorContainer,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37.h),
                  child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
