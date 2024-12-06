import 'package:flutter/material.dart';
import 'package:screen_task/Login%20Feature/Presentation/screen/signin_screen.dart';
import 'package:screen_task/core/Utilities/app_colors.dart';

class SigninWidget extends StatelessWidget {
  const SigninWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SigninScreen()));
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: AppColors.primary,
      ),
      child: const Text(
        "Log in",
        style: TextStyle(fontSize: 20, color: AppColors.text),
      ),
    );
  }
}
