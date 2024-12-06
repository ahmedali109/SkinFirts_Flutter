import 'package:medicalapp/home%20feature/storage/doctor_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'doctors.db');

    return await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE doctors (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            specialization TEXT,
            location TEXT,
            image TEXT,
            careerInfo TEXT,
            highlights TEXT,
            experienceYears INTEGER
          )
        ''');
      },
    );
  }

  
  Future<void> insertDoctor(Doctor doctor) async {
    final db = await database;
    await db.insert('doctors', doctor.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  
  Future<List<Doctor>> getDoctors() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('doctors');

    return List.generate(maps.length, (i) => Doctor.fromMap(maps[i]));
  }
}
