import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({Key? key}) : super(key: key);

  void _showSnackBar() {
    Get.snackbar(
      'Title here',
      'Message here',
      // Another way to provide title text and msg text
      // titleText: Text('Title here', style: TextStyle(color: Colors.white)),
      // messageText: Text('Message here', style: TextStyle(color: Colors.white)),
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.red, // To change color of title and msg
      backgroundColor: Colors.black, // To change color of snackbar bg
      borderRadius: 30.0,
      margin: const EdgeInsets.all(10.0),
      // maxWidth: 100,
      // animationDuration: Duration(milliseconds: 3000),
      // backgroundGradient: LinearGradient(colors: [Colors.blue, Colors.green]),
      /* While using borderColor ensure that you are using borderWidth otherwise
        error will be generated */
      // borderColor: Colors.purple,
      // borderWidth: 4,
      // boxShadows: [
      //   BoxShadow(
      //     color: Colors.yellow,
      //     offset: Offset(30, 50),
      //     spreadRadius: 20,
      //     blurRadius: 8,
      //   ),
      // ],
      // isDismissible: true,
      // dismissDirection: SnackDismissDirection.HORIZONTAL,
      // forwardAnimationCurve: Curves.bounceInOut,
      // duration: Duration(milliseconds: 8000),
      // icon: Icon(Icons.send, color: Colors.white),
      // shouldIconPulse: false,
      leftBarIndicatorColor: Colors.red,
      mainButton: TextButton(
        onPressed: () => print('Retry Tapped'),
        child: Text(
          'Retry',
          style: TextStyle(color: Colors.white),
        ),
      ),
      onTap: (val) => print('Snackbar clicked'),
      overlayBlur: 5,
      // overlayColor: Colors.green,
      padding: const EdgeInsets.all(50.0),
      showProgressIndicator: true,
      progressIndicatorBackgroundColor: Colors.deepOrange,
      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      // reverseAnimationCurve: Curves.bounceInOut,
      snackbarStatus: (val) => print(val),
      // userInputForm: Form(
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: TextField(),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showSnackBar,
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
