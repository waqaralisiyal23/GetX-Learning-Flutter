import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;
}
