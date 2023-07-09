  
  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/widget/roundedInput.dart';

import '../controllers/storeController.dart';

class UpdateStoreName extends StatelessWidget {
 UpdateStoreName({Key? key}) : super(key: key);
//Getx will find your controller.
 final storeController = Get.find<StoreController>();
 
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: const Text("Update Store Name")),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Enter Store Name",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 16),
            RoundedInput(
              hintText: "Store Name",
              controller: storeController.storeNameEditingController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                storeController.updateStoreName(storeController.storeNameEditingController.text);
               
                Get.snackbar(
                    'Updated',
                    'Store name has been updated to\n '
                        '${storeController.storeNameEditingController.text}',
                    snackPosition: SnackPosition.BOTTOM);


//                     Get.defaultDialog(
//    radius: 10.0,
//    contentPadding: const EdgeInsets.all(20.0),
//    title: 'title',
//    middleText: 'content',
//    textConfirm: 'Okay',
//    confirm: OutlinedButton.icon(
//      onPressed: () => Get.back(),
//      icon: const Icon(
//        Icons.check,
//        color: Colors.blue,     ),
//      label: const Text('Okay',
//        style: TextStyle(color: Colors.blue),
//      ),   ),
//  cancel: OutlinedButton.icon(
//      onPressed: (){},
//      icon: Icon(Icons.abc_sharp),
//      label: Text('cancel'),),);
              },

              
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Update',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}