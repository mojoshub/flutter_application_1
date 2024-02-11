// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/customtext.dart';

class customButton extends StatelessWidget {
  final Color buttoncolor;
  final String buttonlabel;
  const customButton({
    super.key,
    required this.buttoncolor,
    required this.buttonlabel,
    required this.passwordController,
    required this.userNameController,
  });

  final TextEditingController userNameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: customtitleText(
        label: buttonlabel,
        labelColor: appWhiteColor,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          elevation: 10,
          padding: const EdgeInsets.all(15)),
    );
  }
}
