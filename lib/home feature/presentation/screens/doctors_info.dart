import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';
import 'package:medicalapp/home%20feature/storage/doctor_model.dart';

class DoctorsInfo extends StatelessWidget {
  final Doctor doctor;

  const DoctorsInfo({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        appBar: AppBar(
          title: Text(doctor.name),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: 300,
                  height: 283,
                  decoration: BoxDecoration(
                    color: AppColors.thirdColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Hero(
                              tag: doctor.id.toString(),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(doctor.image),
                                radius: 90,
                                foregroundColor: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  width: 108,
                                  height: 27,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.stars_rounded,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  '${doctor.experienceYears} years',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                              )),
                                        ]),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  width: 108,
                                  height: 108,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: RichText(
                                      softWrap: true,
                                      text: TextSpan(
                                          text: 'Focus:',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: doctor.careerInfo,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                height: 0,
                                              ),
                                            ),
                                          ])),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        width: 257,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '${doctor.name}\n',
                                  style: const TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  )),
                              TextSpan(
                                  text: doctor.specialization,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 26, 26, 26),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                  ))
                            ])),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
