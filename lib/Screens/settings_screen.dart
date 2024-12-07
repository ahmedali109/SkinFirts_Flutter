import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/Widgets/settings_item.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: AppColors3.primary),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
              color: AppColors3.primary,
              fontSize: 20,
              fontWeight: FontWeight.w900,
             ),
        ),
      ),
      body: const Column(
        children: [
          SettingsItem(
            icon: Icons.notifications_on_outlined,
            title: "Notification Setting",
          ),
          SettingsItem(
            icon: Icons.key_outlined,
            title: "Password Manager",
          ),
          SettingsItem(
            icon: Icons.person_2_outlined,
            title: "Delete Account",
          ),
        ],
      ),
    );
  }
}
