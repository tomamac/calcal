import 'package:calcal/reuse.dart';
import 'package:calcal/states/homepage_state.dart';
import 'package:calcal/states/profilepage_state.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home_page extends StatelessWidget {
  const home_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _state = Get.put(homepage_state());
    final _profilestate = Get.put(profilepageState());
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SafeArea(
            child: Stack(
              children: [
                backgroundImg(),
                Obx(
                  () => SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Stack(
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
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: CircularProgressIndicator(
                                      value: _state.indvalue.value,
                                      backgroundColor: palette.progressbgColor,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        _state.calculateBackgroundColor(
                                            value: _state.indvalue.value),
                                      ),
                                      strokeWidth: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _state.updateIndicator(100);
                          },
                          child: Text('test progress'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: palette.textbgColor,
                          ),
                          width: 200,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            _profilestate.bmr.value == ivalues.iint
                                ? snapshot.data!.getInt('bmr') == null
                                    ? '${_state.sumeat} / ${_profilestate.bmr.value} Kcal'
                                    : '${_state.sumeat} / ${snapshot.data!.getInt('bmr')} Kcal'
                                : '${_state.sumeat} / ${_profilestate.bmr.value} Kcal',
                            style: TextStyle(fontSize: sizes.smallfont),
                          ),
                        ),
                        Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.9 *
                                      0.5,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    color: palette.borderColor,
                                  ),
                                ),
                                Text(
                                  'Today',
                                  style: TextStyle(fontSize: sizes.smallfont),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    color: palette.borderColor,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  height:
                                      MediaQuery.of(context).size.height * 0.39,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    color: palette.textbgColor,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.39,
                                        child: ListView(
                                          children: [
                                            //TODO: Implement eaten list sharedpref
                                            //to ref for length, name, and calories
                                            for (int i = 0; i < 10; i++)
                                              Container(
                                                margin: EdgeInsets.all(10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'menu${i}',
                                                      style: TextStyle(
                                                        fontSize:
                                                            sizes.smallfont,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${i} Kcal',
                                                      style: TextStyle(
                                                        fontSize:
                                                            sizes.smallfont,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
