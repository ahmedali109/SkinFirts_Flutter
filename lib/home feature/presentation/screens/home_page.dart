import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';
import 'package:medicalapp/home%20feature/presentation/widgets/calendar.dart';
import 'package:medicalapp/home%20feature/presentation/widgets/doctor_tile.dart';
import 'package:medicalapp/home%20feature/presentation/widgets/nav_bar.dart';
import 'package:medicalapp/home%20feature/presentation/widgets/operations_bar.dart';
import 'package:medicalapp/home%20feature/presentation/widgets/profile_status.dart';
import 'package:medicalapp/home%20feature/storage/db_config.dart';
import 'package:medicalapp/home%20feature/storage/doctor_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectedDate = DateTime.now();

  late Future<List<Doctor>> doctors;

  @override
  void initState() {
    super.initState();
    doctors = DatabaseHelper().getDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20, vertical: 0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.none,
              scrollDirection: Axis.vertical,
              children: [
                const ProfileStatus(
                  userName: 'John Dee',
                ),
                const SizedBox(
                  height: 40,
                ),
                const OperationBar(),
                const SizedBox(
                  height: 30,
                ),
                Calendar(selectedDate: selectedDate),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: FutureBuilder<List<Doctor>>(
                    future: doctors,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return const Center(child: Text('Error fetching data'));
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return const Center(
                            child: Text('No doctors available'));
                      }

                      final doctorList = snapshot.data!;
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        clipBehavior: Clip.none,
                        itemCount: doctorList.length,
                        itemBuilder: (context, index) {
                          final doctor = doctorList[index];
                          return DoctorTile(
                            doctorName: doctor.name,
                            doctorSpecification: doctor.specialization,
                            doctorImage: doctor.image, doctor: doctor,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            
          ),
          
          const NavBar(),
        ],
      ),
    );
  }
}
