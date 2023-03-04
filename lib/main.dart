import 'package:app_test/home/binding/home_binding.dart';
import 'package:app_test/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/view/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: HomeBinding(),
      debugShowCheckedModeBanner: false,
      title: 'App Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
