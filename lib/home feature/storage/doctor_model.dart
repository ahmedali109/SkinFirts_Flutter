class Doctor {
  final int? id; 
  final String name;
  final String specialization;
  final String location;
  final String image; 
  final String careerInfo;
  final List<String> highlights;
  final int experienceYears;

  Doctor({
    this.id,
    required this.name,
    required this.specialization,
    required this.location,
    required this.image,
    required this.careerInfo,
    required this.highlights,
    required this.experienceYears,
  });

  
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'specialization': specialization,
      'location': location,
      'image': image,
      'careerInfo': careerInfo,
      'highlights': highlights.join(','), 
      'experienceYears': experienceYears,
    };
  }

  
  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      id: map['id'],
      name: map['name'],
      specialization: map['specialization'],
      location: map['location'],
      image: map['image'],
      careerInfo: map['careerInfo'],
      highlights: map['highlights'].split(','), 
      experienceYears: map['experienceYears'],
    );
  }
}
