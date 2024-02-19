import 'package:calcal/pages/bottom_nav.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: palette.bgColor,
          background: palette.bgColor,
        ),
        tabBarTheme: const TabBarTheme(
          dividerColor: Colors.transparent, //อันนี้แก้เส้นขาวๆล่าง TabBar
        ),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          fillColor: palette.textbgColor,
          filled: true,
        ),
      ),
      home: bottom_nav(),
    );
  }
}
