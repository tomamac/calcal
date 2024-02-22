import 'package:calcal/states/homepage_state.dart';
import 'package:calcal/states/popup_state.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

dynamic popup(BuildContext context, String name, String asset, int kcal) async {
  // show the modal dialog and pass some data to it
  // final result = await Navigator.of(context).push(FullScreenModal(
  //       title: 'This is a title',
  //       description: 'Just some dummy description text'));

  final result = await Navigator.of(context).push(
    FullScreenModal(
      name: name,
      asset: asset,
      kcal: kcal,
    ),
  );
  // print the data returned by the modal if any
  debugPrint(result.toString());
}

// this class defines the full-screen semi-transparent modal dialog
// by extending the ModalRoute class
class FullScreenModal extends ModalRoute {
  // variables passed from the parent widget
  final String name;
  final String asset;
  final int kcal;

  // constructor
  FullScreenModal({
    required this.name,
    required this.asset,
    required this.kcal,
  });
  final _state = Get.put(popup_state());
  final _homepagestate = Get.put(homepage_state());
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.6);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => false;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: Obx(
        () => Center(
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.6,
            //16:9 resolution = 0.5625
            width: MediaQuery.of(context).size.height * 0.6 * 0.5625,
            decoration: BoxDecoration(
              color: palette.bgColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      width: 150,
                      height: 150,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        asset,
                        fit: BoxFit.cover,
                        width: 150 * 0.8,
                        height: 150 * 0.8,
                      ),
                    ),
                  ],
                ),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(20),
                //   child: SizedBox(
                //     width: 125,
                //     height: 125,
                //     child: Image.asset(
                //       'images/wings.png',
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                Container(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: _state.count <= 1
                              ? null
                              : () {
                                  _state.count.value -= 1;
                                },
                          icon: Icon(
                            Icons.remove,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Text('${_state.count}'),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            _state.count.value += 1;
                          },
                          icon: Icon(
                            Icons.add,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: sizes.smallfont),
                  ),
                ),
                // ElevatedButton.icon(
                //   onPressed: () {
                //     // close the modal dialog and return some data if needed
                //     Navigator.pop(
                //       context,
                //     );
                //   },
                //   icon: const Icon(Icons.close),
                //   label: const Text('ปิด'),
                // ),
                ElevatedButton(
                  onPressed: () {
                    _homepagestate.updateIndicator(kcal * _state.count.value);
                    Get.showSnackbar(
                      GetSnackBar(
                        message: 'เพิ่มเรียบร้อยแล้ว',
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Text("ยืนยัน"),
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "ยกเลิก",
                  ),
                ),
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // add fade animation
    return FadeTransition(
      opacity: animation,
      // add slide animation
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        // add scale animation
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      ),
    );
  }
}
