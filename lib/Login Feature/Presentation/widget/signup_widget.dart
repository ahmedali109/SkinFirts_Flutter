import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';

// ignore: must_be_immutable
class SignupWidget extends StatelessWidget {
  VoidCallback signUp;
  SignupWidget({super.key,required this.signUp});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: signUp,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        backgroundColor: AppColors2.third,
      ),
      child: const Text(
        "Sign up",
        style: TextStyle(fontSize: 20, color: AppColors2.primary),
      ),
    );
  }
}
