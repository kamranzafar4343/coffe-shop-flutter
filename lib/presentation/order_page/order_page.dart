import 'package:coffee_shop/core/app_export.dart';
import 'package:coffee_shop/widgets/custom_elevated_button.dart';
import 'package:coffee_shop/widgets/custom_icon_button.dart';
import 'package:coffee_shop/widgets/custom_outlined_button.dart';
import 'package:coffee_shop/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OrderPage extends StatefulWidget {
  const OrderPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage>
    with AutomaticKeepAliveClientMixin<OrderPage> {
  TextEditingController priceController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "Delivery Address",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "Jl. Kpg Sutoyo",
                        style: CustomTextStyles.titleSmallBluegray90002,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                        style: CustomTextStyles.bodySmallOnError,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Row(
                        children: [
                          _buildDeliveryAddressButton(context),
                          _buildAddNoteButton(context),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Divider(
                    indent: 30.h,
                    endIndent: 30.h,
                  ),
                  SizedBox(height: 19.v),
                  _buildFrameRow(context),
                  SizedBox(height: 20.v),
                  Divider(
                    color: appTheme.gray10001,
                  ),
                  SizedBox(height: 19.v),
                  _buildDiscountAppliedRow(context),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "Payment Summary",
                        style: CustomTextStyles.titleMediumPrimaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildTotalPaymentRow(
                      context,
                      totalPayment: "Price",
                      price: " 4.53",
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildPriceStack(context),
                  SizedBox(height: 14.v),
                  Divider(
                    indent: 30.h,
                    endIndent: 30.h,
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildTotalPaymentRow(
                      context,
                      totalPayment: "Total Payment",
                      price: " 5.53",
                    ),
                  ),
                  _buildCashColumn(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryAddressButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 120.h,
      text: "Edit Address",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNoteButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 101.h,
      text: "Add Note",
      margin: EdgeInsets.only(left: 8.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgMegaphone,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle170654x54,
            height: 54.adaptSize,
            width: 54.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              children: [
                Text(
                  "Cappucino",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 2.v),
                Text(
                  "with Chocolate",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 13.v),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgUpload,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 17.v,
              bottom: 18.v,
            ),
            child: Text(
              "1",
              style: CustomTextStyles.titleSmallBluegray90001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusBlueGray90001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountAppliedButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 184.h,
      text: "1 Discount is applied",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildDiscountAppliedRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDiscountAppliedButton(context),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
      width: 315.h,
      controller: priceController,
      hintText: "Delivery Fee",
      textInputAction: TextInputAction.done,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildPriceStack(BuildContext context) {
    return SizedBox(
      height: 19.v,
      width: 315.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          _buildPrice(context),
          Align(
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  " 2.0",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    " 1.0",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCashButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 51.h,
      text: "Cash",
      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
      buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildOrderButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Order",
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }

  /// Section Widget
  Widget _buildCashColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Container(
                  width: 112.h,
                  margin: EdgeInsets.only(left: 12.h),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Row(
                    children: [
                      _buildCashButton(context),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 3.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          " 5.53",
                          style: CustomTextStyles.bodySmallBluegray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconDots,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          _buildOrderButton(context),
          SizedBox(height: 27.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTotalPaymentRow(
    BuildContext context, {
    required String totalPayment,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            totalPayment,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primaryContainer,
            ),
          ),
        ),
        Text(
          price,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ],
    );
  }
}
