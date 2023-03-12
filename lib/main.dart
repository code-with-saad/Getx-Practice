import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Practice',
      home: HomeView()
      
    );
  }
}
