import 'package:get/get_state_manager/get_state_manager.dart';

class ExampleCountController extends GetxController {
  int count = 0;

  Future<void> increment() async {
    await Future.delayed(Duration(seconds: 5));
    count++;
    update();
  }

  void cleanUpTask() {
    print('Clean up Task');
  }

  // Better Approach
  @override
  void onInit() {
    increment();
    super.onInit();
  }

  @override
  void onClose() {
    cleanUpTask();
    super.onClose();
  }
}
