import 'package:calcal/reuse.dart';
import 'package:flutter/material.dart';

class advice_page extends StatelessWidget {
  const advice_page({super.key});

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
