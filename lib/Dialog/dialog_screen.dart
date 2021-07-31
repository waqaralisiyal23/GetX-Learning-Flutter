import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key}) : super(key: key);

  void _showDialog() {
    // Get.defaultDialog();
    // Customize default dialog
    Get.defaultDialog(
      title: 'Title here',
      titleStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      // middleText: 'This is a middle text',
      // middleTextStyle: TextStyle(fontSize: 18.0),
      // backgroundColor: Colors.purple,
      // radius: 80.0,
      //
      // To customize middle text
      content: Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 16.0),
          Expanded(
            child: Text('Data Loading'),
          )
        ],
      ),
      //
      // Default cancel and confirm action
      // textCancel: 'Cancel',
      // cancelTextColor: Colors.red,
      // textConfirm: 'Confirm',
      // confirmTextColor: Colors.orange,
      // onCancel: () {},
      // onConfirm: () {},
      // buttonColor: Colors.lightGreen,
      //
      // Customize cancel and confirm action
      // Overrides default cancel and confirm action
      // cancel: Text('Cancel', style: TextStyle(color: Colors.red)),
      // confirm: Text('Confirm', style: TextStyle(color: Colors.orange)),
      //
      actions: [
        ElevatedButton(
          onPressed: () => Get.back(),
          child: Text('Action 1'),
        ),
        ElevatedButton(
          onPressed: () => print('Action 2'),
          child: Text('Action 2'),
        ),
      ],
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showDialog,
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
