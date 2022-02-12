import 'package:get/state_manager.dart';

class Controller1 extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;
}
