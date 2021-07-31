import 'package:get/get_state_manager/get_state_manager.dart';

class SimpleStateCountController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update(); // will update the count variable on UI which uses it
  }
}
