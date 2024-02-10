import 'package:coffee_shop/core/app_export.dart';
import 'package:coffee_shop/presentation/order_page/order_page.dart';
import 'package:coffee_shop/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffee_shop/widgets/app_bar/appbar_title.dart';
import 'package:coffee_shop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrderTabContainerScreen extends StatefulWidget {
  const OrderTabContainerScreen({Key? key}) : super(key: key);

  @override
  OrderTabContainerScreenState createState() => OrderTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class OrderTabContainerScreenState extends State<OrderTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 655.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [OrderPage(), OrderPage()]))
                ]))));
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
        title: AppbarTitle(text: "Order"));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 48.v,
        width: 315.h,
        decoration: BoxDecoration(
            color: appTheme.gray10002,
            borderRadius: BorderRadius.circular(14.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primaryContainer,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: theme.colorScheme.onErrorContainer,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600),
            indicatorPadding: EdgeInsets.all(4.0.h),
            indicator: BoxDecoration(
                color: appTheme.gray10002,
                borderRadius: BorderRadius.circular(20.h)),
            tabs: [Tab(child: Text("Deliver")), Tab(child: Text("Pick Up"))]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
