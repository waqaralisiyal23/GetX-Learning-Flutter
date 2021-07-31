import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetXWithControllerType/controllers/counter_controller.dart';

class GetxWithControllerType extends StatelessWidget {
  /*
  If init property is not used in GetX<Type of Controller> then create the
  instance of controller as follows:
  CounterController counterController = Get.put(CounterController());
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX with Controller Type')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<CounterController>(
              init: CounterController(),
              builder: (controller) {
                return Text(
                  'Count Value is ${controller.count.value}',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                );
              },
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => Get.find<CounterController>().increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
