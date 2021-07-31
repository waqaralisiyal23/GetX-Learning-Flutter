import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  void _showBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.wb_sunny_outlined),
              title: Text('Light Theme'),
              onTap: () => Get.changeTheme(ThemeData.light()),
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Dark Theme'),
              onTap: () => Get.changeTheme(ThemeData.dark()),
            ),
          ],
        ),
      ),
      barrierColor: Colors.greenAccent.shade100,
      backgroundColor: Colors.purpleAccent,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 2.0,
        ),
      ),
      enableDrag: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showBottomSheet,
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
