import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetXWorkers/controllers/workers_controller.dart';

class WorkersScreen extends StatelessWidget {
  final WorkersController controller = Get.put(WorkersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Workers')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count Value is ${controller.count}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => controller.increment(),
              child: Text('Increment'),
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: TextField(
                onChanged: (val) => controller.increment(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
