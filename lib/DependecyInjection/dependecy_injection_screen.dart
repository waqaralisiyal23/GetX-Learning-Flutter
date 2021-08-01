import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/DependecyInjection/controllers/dependency_injection_controller.dart';

class DependecyInjectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // DependencyInjectionController will be created even if it is not used
    // tag will be used to find the instance with tag name
    // Controller disposed when it is not used but if permanent is true then the
    // instance will be alive throughout the app
    // final DependencyInjectionController controller = Get.put(
    //   DependencyInjectionController(),
    //   permanent: true,
    //   tag: 'instance1',
    // );

    // Instance will be created when it is used
    // fenix is similar to "permanent", the difference is that the instance is
    // discarded when is not being used.
    // But when its use is needed again, Get will recreate the instance
    // Get.lazyPut(() => DependencyInjectionController(),
    //     tag: 'instance2', fenix: true);

    // Here permanent will be true by default and isSingleton is false
    // Get.create<DependencyInjectionController>(
    //     () => DependencyInjectionController());

    // If you want to perform some asynchronous operation then we will use this
    // Get.putAsync<DependencyInjectionController>(
    //     () async => DependencyInjectionController());

    return Scaffold(
      appBar: AppBar(title: Text('Dependecy Injection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Instance will be created with tag
                // Get.find<DependencyInjectionController>(tag: 'instance1')
                //     .printHello();

                // Get.find<DependencyInjectionController>(tag: 'instance2')
                //     .printHello();

                // Get.find<DependencyInjectionController>().printHello();

                // Get.find<DependencyInjectionController>().incrementCounter();
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
