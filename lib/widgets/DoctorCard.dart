import 'package:flutter/material.dart';
import '../models/doctor.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorCard({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                color: const Color.fromARGB(255, 226, 176, 176),
                child: Image.network(
                  doctor.image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.full_name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    doctor.type_of_doctor,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    doctor.location_of_center,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16.0, color: Colors.amber),
                      Text(
                        '${doctor.review_rate}',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '${doctor.reviews_count} Reviews',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.favorite_border, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
