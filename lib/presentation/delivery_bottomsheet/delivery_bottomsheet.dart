import 'package:coffee_shop/core/app_export.dart';
import 'package:coffee_shop/widgets/custom_icon_button.dart';
import 'package:coffee_shop/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DeliveryBottomsheet extends StatelessWidget {
  const DeliveryBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5.v,
            width: 44.h,
            decoration: BoxDecoration(
              color: appTheme.gray200,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "10 minutes left",
            style: CustomTextStyles.titleMediumBluegray90002,
          ),
          SizedBox(height: 7.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Delivery to ",
                  style: CustomTextStyles.bodySmallff7f7f7f,
                ),
                TextSpan(
                  text: "Jl. Kpg Sutoyo",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 18.v),
          CustomPinCodeTextField(
            context: context,
            onChanged: (value) {},
          ),
          SizedBox(height: 11.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: CustomIconButton(
                    height: 62.adaptSize,
                    width: 62.adaptSize,
                    padding: EdgeInsets.all(15.h),
                    decoration: IconButtonStyleHelper.outlineGrayTL12,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconBike,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 1.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivered your order",
                        style: CustomTextStyles.titleSmallBluegray90002,
                      ),
                      SizedBox(height: 7.v),
                      SizedBox(
                        width: 190.h,
                        child: Text(
                          "We deliver your goods to you in the shortes possible time.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallOnError.copyWith(
                            height: 1.54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 54.adaptSize,
                width: 54.adaptSize,
                radius: BorderRadius.circular(
                  14.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Johan Hawn",
                      style: CustomTextStyles.titleSmallBluegray90002,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "Personal Courier",
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 54.adaptSize,
                width: 54.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.outlineGrayTL14,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCall,
                ),
              ),
            ],
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }
}
