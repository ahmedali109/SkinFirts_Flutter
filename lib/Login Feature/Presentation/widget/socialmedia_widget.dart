import 'package:flutter/material.dart';

Widget socialMediaIcon(String asset) {
  return Container(
    width: 50,
    height: 50,
    decoration: const BoxDecoration(
      color: Color(0xffCAD6FF),
      shape: BoxShape.circle,
    ),
    child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          asset,
          width: 25,
          height: 25,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
