import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getxlearning/GetXControllerLifecycleMethods/controller/example_count_controller.dart';

class GetxControllerLifecycleMethodsScreen extends StatelessWidget {
  ExampleCountController controller = Get.put(ExampleCountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Controller Lifecycle Methods')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ExampleCountController>(
              init: controller,
              // initState: (data) => controller.increment(),
              // dispose: (_) => controller.cleanUpTask(),
              builder: (controller) {
                return Text(
                  'Count Value is ${controller.count}',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
