import 'package:get/get.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller3.dart';

class BindingExampleScreenControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Controller3());
  }
}
