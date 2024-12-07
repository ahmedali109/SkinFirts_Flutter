import 'package:flutter/material.dart';
import 'package:medicalapp/Login%20Feature/Presentation/widget/login_widget.dart';
import 'package:medicalapp/Login%20Feature/Presentation/widget/signup_widget.dart';
import 'package:medicalapp/config/app_routes.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Logo section
            SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 150,
                    child: Image.asset(
                      "assets/images/purplelogo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Skin",
                    style: TextStyle(fontSize: 25, color: AppColors2.primary),
                  ),
                  const Text(
                    "First",
                    style: TextStyle(fontSize: 25, color: AppColors2.primary),
                  ),
                  const Text(
                    "Dermatology center",
                    style: TextStyle(fontSize: 12, color: AppColors2.primary),
                  ),
                ],
              ),
            ),

            // Description & Buttons section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(height: 15),
                  // Login button
                  SigninWidget(
                    logIn: () => Navigator.pushNamed(context, Routes.logIn),
                  ),
                  const SizedBox(height: 15),
                  SignupWidget(
                    signUp: () => Navigator.pushNamed(context, Routes.signUp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
