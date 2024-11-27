class Doctor {
  final String image;
  final String full_name;
  final String type_of_doctor;
  final String location_of_center;
  final double review_rate;
  final int reviews_count;

  Doctor({
    required this.image, 
    required this.full_name,
    required this.type_of_doctor,
    required this.location_of_center,
    required this.review_rate,
    required this.reviews_count
  });
}