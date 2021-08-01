import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetxServiceScreen/getxservices/service.dart';

class GetxServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Service')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.find<Service>().incrementCounter(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
