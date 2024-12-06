import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';
import 'package:medicalapp/home%20feature/presentation/screens/doctors_info.dart';
import 'package:medicalapp/home%20feature/storage/doctor_model.dart';

class DoctorTile extends StatelessWidget {
  final String doctorName;
  final String doctorSpecification;
  final String doctorImage;
  final Doctor doctor;
  const DoctorTile({
    super.key,
    required this.doctorName,
    required this.doctorSpecification,
    required this.doctorImage,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorsInfo(doctor: doctor),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.thirdColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Hero(
                    tag: doctor.id.toString(),
                    child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        borderRadius: const BorderRadius.all(Radius.circular(80)),
                        child: Image.asset(
                          doctorImage,
                        )),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              padding: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: '$doctorName\n',
                                        style: const TextStyle(
                                            color: AppColors.primaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                    TextSpan(
                                        text: doctorSpecification,
                                        style: const TextStyle(
                                            color: AppColors.primaryColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10))
                                  ])),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Icon(
                                    size: 20,
                                    Icons.chat,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Icon(
                                    size: 20,
                                    Icons.favorite,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
