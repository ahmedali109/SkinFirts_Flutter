import 'package:flutter/material.dart';
import 'package:medicalapp/home%20feature/presentation/screens/home_page.dart';

class Routes{
  static const String welcomeScreen = '/welcome';
  static const String logIn = '/welcome/login';
  static const String signUp = '/welcome/signup';
  static const String homePage = '/home';
  static const String doctorPage = '/home/doctorpage';
}

class AppRoutes {
  
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.welcomeScreen:
      //   return MaterialPageRoute(builder: (_) => const Scaffold());
      // case Routes.logIn:
      //   return MaterialPageRoute(builder: (_) => const Scaffold());
      // case Routes.signUp:
      //   return MaterialPageRoute(builder: (_) => const Scaffold());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      
      default:
        return undefinedRoute();
    }
  }
  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Undefined Route'),
        ),
      ),
    );
  }
}