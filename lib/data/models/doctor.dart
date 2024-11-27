import 'package:doctor_appointment/domain/entities/doctor.dart';
import 'package:flutter/material.dart';

class DoctorModel extends Doctor {
  final String image;
  final String full_name;
  final String type_of_doctor;
  final String location_of_center;
  final double review_rate;
  final int reviews_count;

  DoctorModel({
    required this.image, 
    required this.full_name,
    required this.type_of_doctor,
    required this.location_of_center,
    required this.review_rate,
    required this.reviews_count
  }):super(
    image: image,
    full_name: full_name,
    type_of_doctor: type_of_doctor,
    location_of_center: location_of_center,
    review_rate: review_rate,
    reviews_count: reviews_count
  );

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      image: json['image'],
      full_name: json['full_name'], 
      type_of_doctor: json['type_of_doctor'],
      location_of_center: json['location_of_center'],
      review_rate: json['review_rate'],
      reviews_count: json['reviews_count'],
    );
  }

}
