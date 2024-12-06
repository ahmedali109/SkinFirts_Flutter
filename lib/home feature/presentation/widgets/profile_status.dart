import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';

class ProfileStatus extends StatelessWidget {
  final String userName;

  const ProfileStatus({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 420,
      height: 40, // Increased height for better layout
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 15),
        tileColor: AppColors.secondaryColor,
        leading: const SizedBox(
          width: 40,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              'assets/images/profile_pic.png',
            ),
          ),
        ),
        title: const Text(
          'Hi, Welcome Back!',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
        ),
        subtitle: Text(
          userName,
          style: const TextStyle(
            color: AppColors.hintTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: SizedBox(
          width: 80, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  iconSize: 24,
                  icon: Image.asset(
                    'assets/images/notifications.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/settings.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
