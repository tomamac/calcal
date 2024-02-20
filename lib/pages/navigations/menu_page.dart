import 'package:calcal/pages/main/menu_pages/fastfood_page.dart';
import 'package:calcal/pages/main/menu_pages/manual_page.dart';
import 'package:calcal/pages/main/menu_pages/recommended_page.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';

class menu_page extends StatelessWidget {
  const menu_page({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: palette.tabbgColor,
          title: Container(
            alignment: Alignment.center,
            child: const Text(
              'Food Menu',
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Fast Food",
              ),
              Tab(
                text: "Manual",
              ),
              Tab(
                text: "Recommended",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            fastfood_page(),
            manual_page(),
            recommended_page(),
          ],
        ),
      ),
    );
  }
}
