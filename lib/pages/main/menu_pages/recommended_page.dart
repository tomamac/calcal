import 'package:calcal/popup.dart';
import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';

class recommended_page extends StatelessWidget {
  const recommended_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          backgroundImg(),
          Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    popup(context, "ปลากะพงนึ่งมะนาว", 'images/fish.png', 140,
                        '\n140 Kcal');
                  },
                  child: Card(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: palette.buttonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fish.png',
                                width: 125,
                                height: 125,
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Text(
                                      "ปลากะพงนึ่งมะนาว",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                    )
                                  ]),
                                  Row(children: [
                                    Text(
                                      "140 Kcal",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    popup(context, "สลัดผลไม้", 'images/fruitsalad.png', 214,
                        '\n214 Kcal');
                  },
                  child: Card(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: palette.buttonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/fruitsalad.png',
                                width: 125,
                                height: 125,
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Text(
                                      "สลัดผลไม้",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ]),
                                  Row(children: [
                                    Text(
                                      "214 Kcal",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    popup(context, "เต้าหู้ทรงเครื่อง", 'images/tofu.png', 920,
                        '\n920 Kcal');
                  },
                  child: Card(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: palette.buttonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/tofu.png',
                                width: 125,
                                height: 125,
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Text(
                                      "เต้าหู้ทรงเครื่อง",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                    )
                                  ]),
                                  Row(children: [
                                    Text(
                                      "920 Kcal",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    popup(context, "สลัดผัก", 'images/salad.png', 240,
                        '\n240 Kcal');
                  },
                  child: Card(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: palette.buttonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/salad.png',
                                width: 125,
                                height: 125,
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    Text(
                                      "สลัดผัก",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                    )
                                  ]),
                                  Row(children: [
                                    Text(
                                      "240 Kcal",
                                      style: TextStyle(
                                        fontSize: sizes.smallfont,
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
