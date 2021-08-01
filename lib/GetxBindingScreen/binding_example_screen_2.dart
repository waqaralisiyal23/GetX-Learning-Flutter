import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller4.dart';

class BindingExampleScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binding Example Screen 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count Value is ${Get.find<Controller4>().count.value}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => Get.find<Controller4>().increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
