

import 'package:flutter/widgets.dart';

class CustomHeaderOne extends StatelessWidget {
  const CustomHeaderOne({Key? key, required this.text, this.color,
    this.textAlign
  })
      : super(key: key);

  final String text;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 24,
        color: color
      ),
      textAlign: textAlign
    );
  }
}
