import 'package:calcal/reuse.dart';
import 'package:flutter/material.dart';
import 'package:calcal/values.dart';
import 'package:get/get.dart';

class fastfood_page extends StatelessWidget {
  const fastfood_page({super.key});

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
                  GestureDetector(
                    onTap: () {},
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/kfc.png',
                    ),
                  ),
                  //------------------------------------------
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/pizza_hut.png',
                    ),
                  ),
                  //------------------------------------------
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/burger_king.png',
                    ),
                  ),
                ],
              ),

              //------------------------------------------------

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/subway.png',
                    ),
                  ),
                  //------------------------------------------
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/mc.png',
                    ),
                  ),
                  //------------------------------------------
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/chesters.png',
                    ),
                  ),
                ],
              ),

              //----------------------------------------------

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(17, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/bonchon.png',
                    ),
                  ),
                  //------------------------------------------
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: palette.progressmidColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/pepper_lunch.png',
                    ),
                  ),
                ],
              )
            ],
          ),

          //
        ],
      ),
    );
  }
}
