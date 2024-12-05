import 'package:flutter/material.dart';
import 'package:screen_task/Login%20Feature/Presentation/widget/form_widget.dart';
import 'package:screen_task/Login%20Feature/Presentation/widget/login_widget.dart';
import 'package:screen_task/Login%20Feature/Presentation/widget/socialmedia_widget.dart';
import 'package:screen_task/core/Utilities/app_colors.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text(
            "Log in",
            style: TextStyle(color: AppColors.primary),
          ),
          leading: IconButton(
            color: AppColors.primary,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text("Welcome",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary)),
                    const SizedBox(height: 20),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 120),
                //Form
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                    Text("forget password",
                        style: TextStyle(fontSize: 16, color: Colors.black))
                  ],
                ),
                SizedBox(height: 120),
                Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  SigninWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "or sign up with",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    socialMediaIcon("assets/image/google.png"),
                    const SizedBox(width: 20),
                    socialMediaIcon("assets/image/facebook.png"),
                    const SizedBox(width: 20),
                    socialMediaIcon("assets/image/fingerprint.png"),
                  ]),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Don`t have an account Sign up")
                ])
              ],
            ),
          ),
        ));
  }
}