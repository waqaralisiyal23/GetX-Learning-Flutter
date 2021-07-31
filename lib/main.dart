import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/BottomSheet/bottom_sheet_screen.dart';
import 'package:getxlearning/Dialog/dialog_screen.dart';
import 'package:getxlearning/GetXController/getx_controller_screen.dart';
import 'package:getxlearning/GetXControllerLifecycleMethods/getx_controller_lifecycle_methods_screen.dart';
import 'package:getxlearning/GetXWithControllerType/getx_with_controller_type_screen.dart';
import 'package:getxlearning/ReactiveStateManager/reactive_state_manager_screen.dart';
import 'package:getxlearning/SimpleStateManager/simple_state_manager_screen.dart';
import 'package:getxlearning/SnackBar/snackbar_screen.dart';
import 'package:getxlearning/widgets/home_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Learning',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Learning'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            HomeButton(
              buttonText: 'SnackBar',
              onPressed: () => Get.to(SnackbarScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Dialog',
              onPressed: () => Get.to(DialogScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'BottomSheet',
              onPressed: () => Get.to(BottomSheetScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Reactive State Manager\n(Using Obx)',
              onPressed: () => Get.to(ReactiveStateManagerScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Getx Controller\n(Separating UI and Business Logic)',
              onPressed: () => Get.to(GetxControllerScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'GetX with Controller Type',
              onPressed: () => Get.to(GetxWithControllerType()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Simple State Manager\n(GetBuilder)',
              onPressed: () => Get.to(SimpleStateManager()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'GetX Controller Lifecycle Methods',
              onPressed: () => Get.to(GetxControllerLifecycleMethodsScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
