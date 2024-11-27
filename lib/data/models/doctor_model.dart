
import '../../domain/entities/doctor.dart';

class DoctorModel extends Doctor {
   DoctorModel({
    required String image,
    required String fullName,
    required String typeOfDoctor,
    required String locationOfCenter,
    required double reviewRate,
    required int reviewsCount,
  }) : super(
          image: image,
          full_name: fullName,
          type_of_doctor: typeOfDoctor,
          location_of_center: locationOfCenter,
          review_rate: reviewRate,
          reviews_count: reviewsCount,
        );

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      image: json['image'],
      fullName: json['full_name'],
      typeOfDoctor: json['type_of_doctor'],
      locationOfCenter: json['location_of_center'],
      reviewRate: json['review_rate'].toDouble(),
      reviewsCount: json['reviews_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'full_name': full_name,
      'type_of_doctor': type_of_doctor,
      'location_of_center': location_of_center,
      'review_rate': review_rate,
      'reviews_count': reviews_count,
    };
  }
}