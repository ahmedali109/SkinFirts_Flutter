import 'package:flutter/material.dart';
import 'package:screen_task/Login%20Feature/Presentation/screen/splash_screen.dart';
import 'package:screen_task/core/Utilities/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(fontFamily: AppStrings.fontFamily),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
