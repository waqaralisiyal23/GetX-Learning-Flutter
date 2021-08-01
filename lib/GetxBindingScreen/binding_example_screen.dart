import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller3.dart';

class BindingExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Binding Example Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count Value is ${Get.find<Controller3>().count.value}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => Get.find<Controller3>().increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
