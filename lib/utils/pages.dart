import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/home.dart';
import '../views/storeStatus.dart';
import '../views/updateFollowerCount.dart';
import '../views/updateStoreName.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => Home(),
  ),
  GetPage(name: '/edit_name', page: () => UpdateStoreName()),
  // GetPage(name: '/add_followers', page: () => AddFollowers()),
  GetPage(name: '/toggle_status', page: () => StoreStatus()),
  GetPage(name: '/edit_follower_count', page: () => AddFollowerCount()),
  // GetPage(name: '/add_reviews', page: () => AddReviews()),
  // GetPage(name: '/update_menu', page: () => const UpdateMenu()),
  // SplashScreen.routeName: (context) => const SplashScreen(),
  // HomeScreen.routeName: (context) => const HomeScreen(),
];
