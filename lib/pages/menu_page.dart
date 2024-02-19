import 'package:calcal/reuse.dart';
import 'package:flutter/material.dart';

class menu_page extends StatelessWidget {
  const menu_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          backgroundImg(),
        ],
      ),
    );
  }
}
