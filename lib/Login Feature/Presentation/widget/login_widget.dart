import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';

// ignore: must_be_immutable
class SigninWidget extends StatelessWidget {
  VoidCallback logIn;
  SigninWidget({super.key, required this.logIn});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: logIn,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: AppColors2.primary,
      ),
      child: const Text(
        "Log in",
        style: TextStyle(fontSize: 20, color: AppColors2.text),
      ),
    );
  }
}
