import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medicalapp/app.dart';
import 'package:medicalapp/home%20feature/storage/db_injection.dart';
// ignore: depend_on_referenced_packages
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }
  await DataInjection.injectSampleData();
  runApp(const MedicalAppointement());
}



