import 'package:get/instance_manager.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller1.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller2.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Controller1());
    Get.lazyPut(() => Controller2());
  }
}
