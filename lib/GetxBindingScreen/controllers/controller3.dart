import 'package:get/state_manager.dart';

class Controller3 extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;
}
