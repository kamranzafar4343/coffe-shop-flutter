import '../detail_item_screen/widgets/detailitemchipview_item_widget.dart';
import 'package:coffee_shop/core/app_export.dart';
import 'package:coffee_shop/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_shop/widgets/app_bar/appbar_title.dart';
import 'package:coffee_shop/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffee_shop/widgets/app_bar/custom_app_bar.dart';
import 'package:coffee_shop/widgets/custom_elevated_button.dart';
import 'package:coffee_shop/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailItemScreen extends StatelessWidget {
  const DetailItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 8.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1706,
                          height: 226.v,
                          width: 315.h,
                          radius: BorderRadius.circular(16.h)),
                      SizedBox(height: 20.v),
                      Text("Cappucino", style: theme.textTheme.titleLarge),
                      SizedBox(height: 6.v),
                      _buildDetailItemRow(context),
                      SizedBox(height: 17.v),
                      Divider(),
                      SizedBox(height: 19.v),
                      Text("Description",
                          style: CustomTextStyles.titleMediumPrimaryContainer),
                      SizedBox(height: 12.v),
                      SizedBox(
                          width: 305.h,
                          child: ReadMoreText(
                              "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                              trimLines: 3,
                              colorClickableText: theme.colorScheme.primary,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: "Read More",
                              moreStyle: CustomTextStyles.bodyMediumGray500
                                  .copyWith(height: 1.64),
                              lessStyle: CustomTextStyles.bodyMediumGray500
                                  .copyWith(height: 1.64))),
                      SizedBox(height: 15.v),
                      Text("Size",
                          style: CustomTextStyles.titleMediumPrimaryContainer),
                      SizedBox(height: 12.v),
                      _buildDetailItemChipView(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBuyNowRow(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Detail"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFavorite,
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 30.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildDetailItemRow(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("with Chocolate", style: theme.textTheme.bodySmall),
        SizedBox(height: 13.v),
        Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgSignal,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v, bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "4.8 ",
                        style: CustomTextStyles.titleMediumff2f2d2c),
                    TextSpan(
                        text: "(230)",
                        style: CustomTextStyles.bodySmallff7f7f7f)
                  ]),
                  textAlign: TextAlign.left))
        ])
      ]),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 7.v, bottom: 2.v),
          child: CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
              child: CustomImageView(imagePath: ImageConstant.imgIconBean))),
      Padding(
          padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 2.v),
          child: CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
              child: CustomImageView(imagePath: ImageConstant.imgIconMilk)))
    ]);
  }

  /// Section Widget
  Widget _buildDetailItemChipView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Wrap(
            runSpacing: 12.v,
            spacing: 12.h,
            children: List<Widget>.generate(
                3, (index) => DetailitemchipviewItemWidget())));
  }

  /// Section Widget
  Widget _buildBuyNowRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 43.v),
        decoration: AppDecoration.outlineGrayF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price", style: CustomTextStyles.bodyMediumGray500),
                    Padding(
                        padding: EdgeInsets.only(top: 8.v),
                        child: Text(" 4.53",
                            style: CustomTextStyles.titleMediumPrimary))
                  ])),
          CustomElevatedButton(
              width: 217.h,
              text: "Buy Now",
              buttonStyle: CustomButtonStyles.fillPrimary)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
