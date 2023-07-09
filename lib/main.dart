import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/controllers/storeBindings.dart';
import 'package:getxlearn/controllers/themeController.dart';
import 'package:getxlearn/utils/pages.dart';
import 'package:getxlearn/views/home.dart';

import 'constant/appTheme.dart';
// import 'get';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialBinding: StoreBinding(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
       initialRoute: '/',
          getPages: routes,
      home: Home(),
    );
  }

  newMethod() =>   Container();
}

