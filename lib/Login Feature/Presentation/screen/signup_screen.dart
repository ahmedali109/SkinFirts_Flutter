import 'package:flutter/material.dart';
import 'package:screen_task/Login%20Feature/Presentation/widget/form_widget.dart';
import 'package:screen_task/Login%20Feature/Presentation/widget/signup_widget.dart';
import 'package:screen_task/Login%20Feature/Presentation/widget/socialmedia_widget.dart';
import 'package:screen_task/core/Utilities/app_colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          title: const Text(
            "New Account",
            style: TextStyle(color: AppColors.primary),
          ),
          leading: IconButton(
              color: AppColors.primary,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context))),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Form fields
              Column(
                children: [
                  FormWidget(
                      name: "Full Name",
                      enabledPasswordField: false,
                      keyboard: "text"),
                  const SizedBox(height: 20),
                  FormWidget(
                      name: "Password",
                      enabledPasswordField: true,
                      keyboard: "text"),
                  const SizedBox(height: 20),
                  FormWidget(
                      name: "Email",
                      enabledPasswordField: false,
                      keyboard: "email"),
                  const SizedBox(height: 20),
                  FormWidget(
                      name: "Mobile Phone",
                      enabledPasswordField: false,
                      keyboard: "phone"),
                  const SizedBox(height: 20),
                  FormWidget(
                      name: "Date of birth",
                      enabledPasswordField: false,
                      keyboard: "date"),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 140),
                  Text(
                    "By continuing, you agree to Terms of Use and Privacy Policy.",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  SignupWidget(),
                  const SizedBox(height: 15),
                  Text(
                    "or sign in with",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialMediaIcon("assets/image/google.png"),
                      const SizedBox(width: 20),
                      socialMediaIcon("assets/image/facebook.png"),
                      const SizedBox(width: 20),
                      socialMediaIcon("assets/image/fingerprint.png"),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text("Already have an account? Sign in")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
