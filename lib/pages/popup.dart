import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

dynamic popup(BuildContext context, String name, String asset) async {
  // show the modal dialog and pass some data to it
  // final result = await Navigator.of(context).push(FullScreenModal(
  //       title: 'This is a title',
  //       description: 'Just some dummy description text'));

  final result = await Navigator.of(context).push(
    FullScreenModal(
      name: name,
      asset: asset,
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

  // constructor
  FullScreenModal({
    required this.name,
    required this.asset,
  });
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
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.5,
          //16:9 resolution = 0.5625
          width: MediaQuery.of(context).size.height * 0.5 * 0.5625,
          decoration: BoxDecoration(
            color: palette.bgColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                width: 150,
                height: 150,
                child: Image.asset(
                  asset,
                ),
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
              const SizedBox(
                height: 15,
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

              const SizedBox(
                height: 30,
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
                  Get.back();
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
              )
            ],
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
