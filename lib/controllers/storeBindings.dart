import 'package:get/get.dart';
import 'package:getxlearn/controllers/storeController.dart';

class StoreBinding implements Bindings {
// default dependency
 @override
 void dependencies() {
   Get.lazyPut(() => StoreController());
 }
}