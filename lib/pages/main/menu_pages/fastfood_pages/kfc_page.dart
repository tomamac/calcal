import 'package:calcal/reuse.dart';
import 'package:flutter/material.dart';
import 'package:calcal/values.dart';

class kfc_page extends StatelessWidget {
  const kfc_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          backgroundImg(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'images/kfc.png',
                    ),
                  ),
                ],
              ),
              //-------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'images/kfc.png',
                    ),
                  ),
                ],
              ),
              //-------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'images/kfc.png',
                    ),
                  ),
                ],
              ),
              //-------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'images/kfc.png',
                    ),
                  ),
                ],
              ),
            ],
          ),

          //
        ],
      ),
    );
  }
}
