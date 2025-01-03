import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/board_page/view/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek Ade',
      home: OnboardView(), // Halaman pertama yang dimuat
    );
  }
}