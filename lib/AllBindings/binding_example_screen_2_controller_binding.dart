import 'package:get/get.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller4.dart';

class BindingExampleScreen2ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Controller4());
  }
}
