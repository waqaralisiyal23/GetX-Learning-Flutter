import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/ImplementingInternationalization/controllers/internationalization_controller.dart';

class ImplementingInternationalizationScreen extends StatelessWidget {
  final InternationalizationController controller =
      Get.put(InternationalizationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Implementing Internationalization')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(color: Colors.green, fontSize: 28.0),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => controller.changeLanguage('ur', 'PK'),
              child: Text('Urdu'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => controller.changeLanguage('fr', 'FR'),
              child: Text('French'),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => controller.changeLanguage('en', 'US'),
              child: Text('English'),
            ),
          ],
        ),
      ),
    );
  }
}
