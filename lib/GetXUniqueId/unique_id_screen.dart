import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getxlearning/GetXUniqueId/controllers/unique_id_controller.dart';

class UniqueIdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Unique Id')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<UniqueIdController>(
              id: 'txtCount',
              init: UniqueIdController(),
              builder: (controller) {
                return Text(
                  'Count Value is ${controller.count}',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                );
              },
            ),
            SizedBox(height: 12.0),
            GetBuilder<UniqueIdController>(
              init: UniqueIdController(),
              builder: (controller) {
                return Text(
                  'Count Value is ${controller.count}',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                );
              },
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => Get.find<UniqueIdController>().increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
