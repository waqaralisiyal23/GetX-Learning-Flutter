import 'package:get/get_state_manager/get_state_manager.dart';

class UniqueIdController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update(['txtCount']);
  }
}
