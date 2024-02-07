import 'package:flutter/material.dart';

Container backgroundImg() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/background.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}
