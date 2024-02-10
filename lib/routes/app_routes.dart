import 'package:flutter/material.dart';
import 'package:coffee_shop/presentation/home_container_screen/home_container_screen.dart';
import 'package:coffee_shop/presentation/detail_item_screen/detail_item_screen.dart';
import 'package:coffee_shop/presentation/order_tab_container_screen/order_tab_container_screen.dart';
import 'package:coffee_shop/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String detailItemScreen = '/detail_item_screen';

  static const String orderPage = '/order_page';

  static const String orderTabContainerScreen = '/order_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeContainerScreen: (context) => HomeContainerScreen(),
    detailItemScreen: (context) => DetailItemScreen(),
    orderTabContainerScreen: (context) => OrderTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
