import 'package:flutter/material.dart';

class ContainerImg {
  static Container imgCards(assetName) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(assetName), fit: BoxFit.cover),
      ),
    );
  }
}
