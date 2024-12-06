import 'package:flutter/material.dart';
import 'package:medicalapp/config/app_routes.dart';
import 'package:medicalapp/config/app_theme.dart';

class MedicalAppointement extends StatelessWidget {
  const MedicalAppointement({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical Appointment',
      theme: appTheme(),
      // TODO : later changes to welcome page
      initialRoute: Routes.homePage,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      
    );
      
  }
}