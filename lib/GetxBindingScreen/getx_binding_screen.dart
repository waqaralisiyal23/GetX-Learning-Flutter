import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/AllBindings/binding_example_screen_2_controller_binding.dart';
import 'package:getxlearning/GetxBindingScreen/binding_example_screen_2.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller1.dart';

class GetxBindingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Binding')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count Value is ${Get.find<Controller1>().count.value}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => Get.find<Controller1>().increment(),
              child: Text('Increment'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => Get.toNamed('/binding_example_screen'),
              child: Text('Go to Example Binding Screen'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => Get.to(
                BindingExampleScreen2(),
                binding: BindingExampleScreen2ControllerBinding(),
              ),
              child: Text('Go to Example Binding Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
