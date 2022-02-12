import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/SimpleStateManager/controllers/simple_state_count_controller.dart';

class SimpleStateManager extends StatelessWidget {
  const SimpleStateManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple State Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<SimpleStateCountController>(
              init: SimpleStateCountController(),
              builder: (controller) {
                return Text(
                  'Count Value is ${controller.count}',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                );
              },
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () =>
                  Get.find<SimpleStateCountController>().increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
