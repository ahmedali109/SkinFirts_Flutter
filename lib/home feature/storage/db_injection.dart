import 'package:medicalapp/home%20feature/storage/db_config.dart';
import 'package:medicalapp/home%20feature/storage/doctor_model.dart';

class DataInjection {
  static Future<void> injectSampleData() async {
    final dbHelper = DatabaseHelper();

    final sampleDoctors = [
      Doctor(
        name: 'Dr. Olivia Turner',
        specialization: 'Dermatologist',
        location: 'New York',
        image: 'assets/images/doc1.png',
        careerInfo: 'Expert in skin care and dermatology.',
        highlights: ['Published research', '10 years experience'],
        experienceYears: 10,
      ),
      Doctor(
        name: 'Dr. Alexander Bennett',
        specialization: 'Cardiologist',
        location: 'Chicago',
        image: 'assets/images/doc2.png',
        careerInfo: 'Specialist in heart diseases.',
        highlights: ['Top surgeon', '20 years experience'],
        experienceYears: 20,
      ),
      Doctor(
        name: 'Dr. Alexander Bennett',
        specialization: 'Cardiologist',
        location: 'Chicago',
        image: 'assets/images/doc2.png',
        careerInfo: 'Specialist in heart diseases.',
        highlights: ['Top surgeon', '20 years experience'],
        experienceYears: 20,
      ),
      Doctor(
        name: 'Dr. Susan Bennett',
        specialization: 'Cardiologist',
        location: 'New Mexico',
        image: 'assets/images/doc3.png',
        careerInfo: 'Specialist in heart diseases.',
        highlights: ['Top surgeon', '15 years experience'],
        experienceYears: 15,
      ),
      Doctor(
        name: 'Dr. Susan Bennett',
        specialization: 'Cardiologist',
        location: 'New Mexico',
        image: 'assets/images/doc3.png',
        careerInfo: 'Specialist in heart diseases.',
        highlights: ['Top surgeon', '15 years experience'],
        experienceYears: 15,
      ),
      Doctor(
        name: 'Dr. Anita henry',
        specialization: 'Cardiologist',
        location: 'New Mexico',
        image: 'assets/images/doc1.png',
        careerInfo: 'Specialist in heart diseases.',
        highlights: ['Top surgeon', '15 years experience'],
        experienceYears: 15,
      ),
    ];

    for (var doctor in sampleDoctors) {
      await dbHelper.insertDoctor(doctor);
    }
  }
}
