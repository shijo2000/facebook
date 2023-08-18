import 'package:flutter/material.dart';

Widget headerbutton({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color buttoncolor,
}) =>
    TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttoncolor,
      ),
      label: Text(buttonText),
    );
