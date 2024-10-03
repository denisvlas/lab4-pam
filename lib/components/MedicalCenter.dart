import 'package:flutter/material.dart';

class MedicalCenter extends StatelessWidget {
  const MedicalCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1682145291930-43b73e27446e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y2xpbmljfGVufDB8fDB8fHww', 
              height: 100.0,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 100.0,
                  color: Colors.grey[300],
                  child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sunrise Health Clinic',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16.0, color: Colors.grey),
                    SizedBox(width: 5.0),
                    Text('123 Oak Street, CA 98765'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      '5.0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Icon(Icons.star, color: Colors.amber, size: 16.0),
                    Icon(Icons.star, color: Colors.amber, size: 16.0),
                    Icon(Icons.star, color: Colors.amber, size: 16.0),
                    Icon(Icons.star, color: Colors.amber, size: 16.0),
                    Icon(Icons.star, color: Colors.amber, size: 16.0),
                    SizedBox(width: 5.0),
                    Text('(58 Reviews)'),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.directions_walk,
                            size: 16.0, color: Colors.grey),
                        SizedBox(width: 5.0),
                        Text('2.5 km/40min'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_hospital,
                            size: 16.0, color: Colors.grey),
                        SizedBox(width: 5.0),
                        Text('Hospital'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
