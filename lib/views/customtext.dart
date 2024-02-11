import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class customtitleText extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double labelFontSize;
  const customtitleText(
      {super.key,
      required this.label,
      this.labelColor = appGreyColor,
      this.labelFontSize = 17});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
          color: labelColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ));
  }
}
