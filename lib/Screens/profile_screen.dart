import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/Widgets/menu_items.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';
import 'package:medicalapp/home%20feature/presentation/widgets/nav_bar.dart';

import 'settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int index = 0;
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
          "My Profile",
          style: TextStyle(
            color: AppColors3.primary,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            //fontFamily: AppStrings.fontFamily
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              const Hero(
                tag: 'prof',
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile_pic.png'),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: AppColors3.primary,
                    borderRadius: BorderRadius.circular(80)),
                child: const Icon(Icons.pending),
              ),
            ]),
            const SizedBox(height: 10),
            const Text(
              "John Doe",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            // Menu Items
            const MenuItem(icon: Icons.person_2_outlined, title: "Profile"),
            const MenuItem(
                icon: Icons.favorite_border_outlined, title: "Favorite"),
            const MenuItem(icon: Icons.payment, title: "Payment Method"),
            const MenuItem(icon: Icons.privacy_tip, title: "Privacy Policy"),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SettingsScreen();
                  }));
                },
                child: const MenuItem(icon: Icons.settings, title: "Settings")),
            const MenuItem(icon: Icons.help, title: "Help"),
            const MenuItem(icon: Icons.logout, title: "Logout"),
            const SizedBox(height: 130),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: const NavBar())
          ],
        ),
      ),
    );
  }
}
