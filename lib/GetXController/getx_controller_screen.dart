import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetXController/controllers/my_controller.dart';

class GetxControllerScreen extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Controller'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 24.0),
            Text(
              'Individual variables observable',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 12.0),
            Obx(
              () => Text(
                'Name is ${myController.student.name.value}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () =>
                  myController.convertToUpperCaseForIndividualVariables(),
              child: Text('Upper'),
            ),
            SizedBox(height: 60.0),
            Text(
              'Entire Class observable',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 12.0),
            Obx(
              () => Text(
                'Name is ${myController.student2.value.name}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => myController.convertToUpperCaseForEntireClass(),
              child: Text('Upper'),
            ),
          ],
        ),
      ),
    );
  }
}
