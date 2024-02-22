import 'package:calcal/reuse.dart';
import 'package:calcal/states/homepage_state.dart';
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
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // var foodList = snapshot.data!.getStringList('name') ?? [];
          // var kcalList = snapshot.data!.getStringList('kcal') ?? [];
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
                                      value:
                                          snapshot.data!.getInt('bmr') == null
                                              ? 0
                                              : (snapshot.data!
                                                      .getDouble('indval') ??
                                                  0),
                                      backgroundColor: palette.progressbgColor,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        _state.calculateBackgroundColor(
                                            value: snapshot.data!
                                                    .getDouble('indval') ??
                                                0),
                                      ),
                                      strokeWidth: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                            '${_state.sumeat.value == 0 ? snapshot.data!.getInt('sumeat') ?? 0 : _state.sumeat} / ${snapshot.data!.getInt('bmr') ?? 0} Kcal',
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
                                            for (int i = 0;
                                                i <
                                                    (snapshot.data!
                                                                .getStringList(
                                                                    'name') ??
                                                            [])
                                                        .length;
                                                i++)
                                              Container(
                                                margin: EdgeInsets.all(10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      (snapshot.data!
                                                              .getStringList(
                                                                  'name') ??
                                                          [])[i],
                                                      style: TextStyle(
                                                        fontSize:
                                                            sizes.smallfont,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${(snapshot.data!.getStringList('kcal') ?? [])[i]} Kcal',
                                                      // '${(snapshot.data!.getStringList('kcal') ?? [])[i]} Kcal',
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
