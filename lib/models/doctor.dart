import 'package:flutter/material.dart';

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

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      image: json['image'],
      full_name: json['full_name'], 
      type_of_doctor: json['type_of_doctor'],
      location_of_center: json['location_of_center'],
      review_rate: json['review_rate'],
      reviews_count: json['reviews_count'],
    );
  }

}

//  class DoctorList extends StatelessWidget {

//  DoctorList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 '532 founds',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'Default TI',
//                 style: TextStyle(fontSize: 14, color: Colors.grey),
//               ),
//             ],
//           ),
//         ),
//         ListView(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           children: doctors.map((doctor) {
//             return DoctorCard(doctor: doctor);
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }

// class DoctorCard extends StatelessWidget {
//   final Doctor doctor;

//   const DoctorCard({Key? key, required this.doctor}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12.0),
//               child: Container(
//                 color: const Color.fromARGB(255, 226, 176, 176),
//                 child: Image.network(
//                   doctor.imageUrl,
//                   width: 100,
//                   height: 100,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     doctor.name,
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     doctor.specialty,
//                     style: TextStyle(fontSize: 14, color: Colors.grey),
//                   ),
//                   Text(
//                     doctor.location,
//                     style: TextStyle(fontSize: 14, color: Colors.grey),
//                   ),
//                   Row(
//                     children: [
//                       const Icon(Icons.star, size: 16.0, color: Colors.amber),
//                       Text(
//                         '${doctor.rating}',
//                         style: TextStyle(fontSize: 14),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         '${doctor.reviews} Reviews',
//                         style: TextStyle(fontSize: 14, color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Icon(Icons.favorite_border, color: Colors.blue),
//           ],
//         ),
//       ),
//     );
//   }
// }




 