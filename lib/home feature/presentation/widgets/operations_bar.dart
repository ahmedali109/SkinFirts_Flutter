import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';

class OperationBar extends StatelessWidget {
  const OperationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
            child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/doctors.png'))),
        Expanded(
            child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/favourite.png'))),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 200,
          height: 40,
          child: TextField(
              decoration: InputDecoration(
                  fillColor: AppColors.thirdColor,
                  hoverColor: AppColors.thirdColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  suffixIcon: const IconButton(
                    onPressed: null,
                    iconSize: 20,
                    icon: Icon(
                      Icons.filter_list_outlined,
                      color: Colors.black,
                    ),
                  ),
                  alignLabelWithHint: true)),
        )
      ]),
    );
  }
}
