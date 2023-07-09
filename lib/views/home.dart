import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/constant/colorConst.dart';

import '../constant/appTheme.dart';
import '../controllers/storeController.dart';
import '../controllers/themeController.dart';
import '../widget/mainCard.dart';
import '../widget/sideDrawer.dart';

class Home extends GetView<StoreController> {
  Home({Key? key}) : super(key: key);
  // final storeController = Get.find<StoreController>();
  
  final themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
     Get.put(StoreController());
    return Scaffold(
      backgroundColor: AppColors.spaceCadet,
      appBar: AppBar(
        title: const Text("GetX Store"),
         actions: [IconButton(
           onPressed: () {
             if (Get.isDarkMode) {
               themeController.changeTheme(Themes.lightTheme);
               themeController.saveTheme(false);
             } else {
               themeController.changeTheme(Themes.darkTheme);
               themeController.saveTheme(true); }},
           icon: Get.isDarkMode
               ? const Icon(Icons.light_mode_outlined)
               : const Icon(Icons.dark_mode_outlined),),], ),
      
      drawer: const SideDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: [
            MainCard(
              title: "Store Info",
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Store Name:',
                          style: TextStyle(fontSize: 20),
                        ),
                        fit: FlexFit.tight,
                      ),
                      const SizedBox(width: 20.0),
                      // Wrapped with Obx to observe changes to the storeName
                      // variable when called using the StoreController.
                      Obx(
                        () => Flexible(
                          child: Text(controller.storeName.value.toString(),
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          fit: FlexFit.tight,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Store Followers:',
                          style: TextStyle(fontSize: 20),
                        ),
                        fit: FlexFit.tight,
                      ),
                      const SizedBox(width: 20.0),
                      // Wrapped with Obx to observe changes to the followerCount
                      // variable when called using the StoreController.
                      Obx(
                        () => Flexible(
                          child: Text(
                            controller.followerCount.value.toString(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          fit: FlexFit.tight,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Status:',
                          style: TextStyle(fontSize: 20),
                        ),
                        fit: FlexFit.tight,
                      ),
                      const SizedBox(width: 20.0),
                      // Wrapped with Obx to observe changes to the storeStatus
                      // variable when called using the StoreController.
                      Obx(
                        () => Flexible(
                          child: Text(
                            controller.storeStatus.value ? 'Open' : 'Closed',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: controller.storeStatus.value
                                    ? Colors.green.shade700
                                    : Colors.red,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          fit: FlexFit.tight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
