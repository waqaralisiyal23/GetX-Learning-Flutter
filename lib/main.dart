import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/AllBindings/binding_example_screen_controller_binding.dart';
import 'package:getxlearning/BottomSheet/bottom_sheet_screen.dart';
import 'package:getxlearning/DependecyInjection/dependecy_injection_screen.dart';
import 'package:getxlearning/Dialog/dialog_screen.dart';
import 'package:getxlearning/GetXController/getx_controller_screen.dart';
import 'package:getxlearning/GetXControllerLifecycleMethods/getx_controller_lifecycle_methods_screen.dart';
import 'package:getxlearning/GetXUniqueId/unique_id_screen.dart';
import 'package:getxlearning/GetXWithControllerType/getx_with_controller_type_screen.dart';
import 'package:getxlearning/GetXWorkers/workers_screen.dart';
import 'package:getxlearning/GetxBindingScreen/binding_example_screen.dart';
import 'package:getxlearning/GetxBindingScreen/controllers/controller3.dart';
import 'package:getxlearning/GetxBindingScreen/getx_binding_screen.dart';
import 'package:getxlearning/GetxServiceScreen/getx_service_screen.dart';
import 'package:getxlearning/GetxServiceScreen/getxservices/service.dart';
import 'package:getxlearning/ImplementingInternationalization/implementing_internationalization_screen.dart';
import 'package:getxlearning/ImplementingInternationalization/translations/messages.dart';
import 'package:getxlearning/ReactiveStateManager/reactive_state_manager_screen.dart';
import 'package:getxlearning/SimpleStateManager/simple_state_manager_screen.dart';
import 'package:getxlearning/SnackBar/snackbar_screen.dart';
import 'package:getxlearning/AllBindings/all_controller_binding.dart';
import 'package:getxlearning/widgets/home_button.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('Starting Services...');
  await Get.putAsync<Service>(() async => Service());
  print('All Services Started ...');
}

// Smart Management
// GetX provides Smart Management that lets us configure how dependencies
// behave in terms of memory management.
// GetMaterialApp(
//   smartManagement: SmartManagement.full  // or .keepFactory  // or .onlyBuilder
// )
// By deafult is SmartManagement.full
//
// full
// =====
// Everything gets disposed as soon as the route is removed from navigation
// stack, unless declared permanent
//
// keepFactory
// ===========
// Just like SmartManagement.full, it will remove its dependencies when its not
// being used anymore. However, it will keep their factory, which means it will
// recreate the dependency if you need that instance again.
//
// onlyBuilder
// ===========
// With this option, only controllers started in init: or loaded into a Binding
// with Get.lazyPut() will be disposed
//
// If you use Get.put() or Get.putAsync() or any other approach, SmartManagement
// will not have permissions to exclude this dependency

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.onlyBuilder,
      translations: Messages(),
      locale: Locale('en',
          'US'), // default locale, to get device locale use Get.deviceLocale
      fallbackLocale:
          Locale('en', 'US'), // fallback locale if wrong locale found
      initialBinding: AllControllerBinding(),
      // if binding applied at route level
      // getPages: [
      //   GetPage(
      //     name: '/binding_example_screen',
      //     page: () => BindingExampleScreen(),
      //     binding: BindingExampleScreenControllerBinding(),
      //   ),
      // ],
      // BindingsBuilder (if we don't want to use separate binding class)
      getPages: [
        GetPage(
          name: '/binding_example_screen',
          page: () => BindingExampleScreen(),
          binding: BindingsBuilder(() => Get.lazyPut(() => Controller3())),
        ),
      ],
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
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'GetX Unique Id',
              onPressed: () => Get.to(UniqueIdScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'GetX Workers',
              onPressed: () => Get.to(WorkersScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Implementing Internationalization\n(Using GetX)',
              onPressed: () => Get.to(ImplementingInternationalizationScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Dependecy Injection',
              onPressed: () => Get.to(DependecyInjectionScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'GetX Service',
              onPressed: () => Get.to(GetxServiceScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'GetX Binding',
              onPressed: () => Get.to(GetxBindingScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
