import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color calculateBackgroundColor({required double value}) {
      if (value > 0.60) {
        return Colors.red;
      } else if (value > 0.30) {
        return Colors.orange;
      } else {
        return Colors.green;
      }
    }

    return SafeArea(
      child: Stack(
        children: [
          backgroundImg(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: palette.progressmidColor,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'images/burger.png',
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: CircularProgressIndicator(
                        value: 0.3,
                        backgroundColor: palette.progressbgColor,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          calculateBackgroundColor(value: 0.3),
                        ),
                        strokeWidth: 8,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
