import 'package:flutter/material.dart';
import 'package:screen_task/Login%20Feature/Presentation/screen/signup_screen.dart';
import 'package:screen_task/core/Utilities/app_colors.dart';

class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SignupScreen()));
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: AppColors.third,
      ),
      child: const Text(
        "Sign up",
        style: TextStyle(fontSize: 20, color: AppColors.primary),
      ),
    );
  }
}
