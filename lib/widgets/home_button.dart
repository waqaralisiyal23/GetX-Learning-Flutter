import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const HomeButton({
    Key? key,
    this.buttonText = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.green,
      onPressed: onPressed,
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
