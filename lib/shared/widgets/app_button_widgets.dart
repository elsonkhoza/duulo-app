

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key,
    this.text
   ,this.backgroundColor,
   required this.onPressed
  }): super(key: key);

  final VoidCallback onPressed;
  final String? text;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 48,
        child: Center(
          child: Text(text!, style: TextStyle(color: Colors.white),),
        ),
        decoration: BoxDecoration(
         color: Colors.black87,
          borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}
