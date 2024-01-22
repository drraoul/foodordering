import 'package:e_commerce_app/page/add_to_card_page.dart';
import 'package:e_commerce_app/page/home_page.dart';
import 'package:e_commerce_app/page/login_page.dart';
import 'package:e_commerce_app/page/splash_screen_page.dart';
import 'package:flutter/material.dart';


import 'constant/router_constant.dart';
import 'page/detail_page.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      case RouteConstant.loginScreenRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case RouteConstant.homeScreenRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteConstant.detailPageRoute:
        return MaterialPageRoute(builder: (_) => const DetailPage());
      case RouteConstant.addCardPageRoute:
        return MaterialPageRoute(builder: (_) => const AddToCardPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('Route'),
            ),
          ),
        );
    }
  }
}
