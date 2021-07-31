import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/ReactiveStateManager/with_custom_class_screen.dart';

/*
If we want that every time the value of variable changes then all the widgets
which uses the variable must update itself then the variable must be reactive
or observable and to make it Reactive(Rx) .obs is used with variable value.

To update the widget which uses Rx variable must be placed inside
Obx(() => Your widget which uses Rx)
The widget wil only update if and only if the Rx variable value changes.

Other ways of making the variable Rx:
1. The first is Rx(Type)
  ======================
  Initial value is recommended, but not mandatory
  final name = RxString('');
  final isLogged = RxBool(false);
  final count = RxInt(0);
  final balance = RxDouble(0.0);
  final items = RxList<String>([]);
  final myMap = RxMap<String, int>({});

2. Use Dart Generics, Rx<Type>
  ======================
  final name = Rx<String>('');
  final isLogged = Rx<Bool>(false);
  final count = Rx<Int>(0);
  final balance = Rx<Double>(0.0);
  final num = Rx<Num>(0);
  final items = Rx<List<String>>([]);
  final myMap = Rx<Map<String, int>>({});
  Custom classes - it can be any class
  final user = Rx<User>();
*/

class ReactiveStateManagerScreen extends StatelessWidget {
  RxInt _count = 0.obs;

  void _increment() => _count++;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reactive State Manager'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: Container()),
            Obx(
              () => Text(
                'Count Value is $_count',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: _increment,
              child: Text('Increment'),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: ElevatedButton(
                onPressed: () => Get.to(WithCustomClassScreen()),
                child: Text('Next (With Custom Class)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
