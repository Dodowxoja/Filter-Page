import 'package:flutter/material.dart';

class MyIcon {
  MyIcon(IconData icon, {double? size, Color? color});

  static Icon icons(IconData icon) {
    return Icon(
      icon,
      size: 18,
      color: Colors.orange.shade300,
    );
  }
}
