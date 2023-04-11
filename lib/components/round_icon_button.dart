// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  const RoundIconButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color.fromARGB(255, 114, 91, 116),
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      // elevation: 30,
      child: Icon(icon),
    );
  }
}