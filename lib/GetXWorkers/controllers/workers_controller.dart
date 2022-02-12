import 'package:get/state_manager.dart';

class WorkersController extends GetxController {
  RxInt count = 0.obs;

  void increment() => count++;

  @override
  void onInit() {
    super.onInit();

    // Called every time when the value of the count changes
    // ever(count, (_) => print(count));

    // Called every time when the value of any variable from the list changes
    // everAll([count], (_) => print(count));

    // Called only once when the variable value changes
    // once(count, (_) => print(count));

    // Called every time when the user stops typing for 1 seconds
    // Default time is 800 milliseconds or 0.8 seconds
    // debounce(
    //   count,
    //   (_) =>
    //       print('When the user stop typing for 1 sec, the value of count will '
    //           'be printed'),
    //   time: Duration(seconds: 1),
    // );

    // Ignore all changes within 3 seconds
    // Imagine that the user can earn coins by clicking on something
    // If he clicked 300 times in the same minute,
    // he would have 300 coins,
    // using interval you can set a time frame for 300 seconds,
    // and even then clicking 300 or a thousands times,
    // the maximum he would get in 1 minute would be 20 coins,
    // Default time is 1 second
    // interval(
    //   count,
    //   (_) => print('Ignore all changes'),
    //   time: Duration(seconds: 3),
    // );
  }
}
