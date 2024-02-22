import 'package:calcal/popup.dart';
import 'package:calcal/reuse.dart';
import 'package:flutter/material.dart';
import 'package:calcal/values.dart';

class kfc_page extends StatelessWidget {
  const kfc_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: palette.tabbgColor,
        title: const Text(
          "KFC Menu",
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            backgroundImg(),
            Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      popup(context, "ไก่วิงซ์แซ่บ 3 ชิ้น", 'images/wings.png',
                          300, "\n300 Kcal");
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
                                  'images/wings.png',
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
                                        "ไก่วิงซ์แซ่บ 3 ชิ้น",
                                        style: TextStyle(
                                          fontSize: sizes.smallfont,
                                        ),
                                      )
                                    ]),
                                    Row(children: [
                                      Text(
                                        "300 Kcal",
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
                      popup(context, "ไก่ไม่มีกระดูก 2 ชิ้น",
                          'images/tender.png', 130, '\n130 Kcal');
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
                                  'images/tender.png',
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
                                        "ไก่ไม่มีกระดูก 2 ชิ้น",
                                        style: TextStyle(
                                          fontSize: sizes.smallfont,
                                        ),
                                      )
                                    ]),
                                    Row(children: [
                                      Text(
                                        "130 Kcal",
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
                      popup(context, "นักเก็ตส์ 6 ชิ้น", 'images/nugget.png',
                          270, '\n270 Kcal');
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
                                  'images/nugget.png',
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
                                        "นักเก็ตส์ 6 ชิ้น",
                                        style: TextStyle(
                                          fontSize: sizes.smallfont,
                                        ),
                                      )
                                    ]),
                                    Row(children: [
                                      Text(
                                        "270 Kcal",
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
                      popup(context, "ทาร์ตไข่ 1 ชิ้น", 'images/tart.png', 170,
                          '\n170 Kcal');
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
                                  'images/tart.png',
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
                                        "ทาร์ตไข่ 1 ชิ้น",
                                        style: TextStyle(
                                          fontSize: sizes.smallfont,
                                        ),
                                      )
                                    ]),
                                    Row(children: [
                                      Text(
                                        "170 Kcal",
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
      ),
    );
  }
}
