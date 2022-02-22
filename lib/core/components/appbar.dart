import 'package:flutter/material.dart';

class MyAppBar {
  static appBar(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: myText(),
      actions: [myIconButton(context)],
    );
  }

  static Text myText() {
    return const Text(
      'Room',
      style: TextStyle(fontSize: 16, color: Colors.black),
    );
  }

  static IconButton myIconButton(context) {
    return IconButton(
      icon: const Icon(
        Icons.format_list_bulleted_rounded,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/filter');
      },
    );
  }
}
