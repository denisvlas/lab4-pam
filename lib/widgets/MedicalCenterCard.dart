import 'package:flutter/material.dart';

class MedicalCenter extends StatelessWidget {
  final String title;
  final String locationName;
  final double reviewRate;
  final int countReviews;
  final double distanceKm;
  final String type;
  final String image;

  const MedicalCenter({
    required this.title,
    required this.locationName,
    required this.reviewRate,
    required this.countReviews,
    required this.distanceKm,
    required this.type,
    required this.image,
  });

  factory MedicalCenter.fromJson(Map<String, dynamic> json) {
    return MedicalCenter(
      title: json['title'] as String,
      locationName: json['location_name'] as String,
      reviewRate: (json['review_rate'] as num).toDouble(),
      countReviews: json['count_reviews'] as int,
      distanceKm: (json['distance_km'] as num).toDouble(),
      type: json['type'] as String,
      image: json['image'] as String,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width*0.8,
      ),
      child: Card(
        margin: const EdgeInsets.only(bottom: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
  borderRadius: const BorderRadius.vertical(
    top: Radius.circular(15.0),
  ),
  child: Image.network(
    image,
    fit: BoxFit.cover,
    width: double.infinity, // Make the image take full width
    height: 200.0, // Adjust height as needed
    errorBuilder: (context, error, stackTrace) {
      return Container(
        width: double.infinity,
        height: 100.0,
        color: Colors.grey[300],
        child: const Icon(
          Icons.broken_image,
          size: 50,
          color: Colors.grey,
        ),
      );
    },
  ),
),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 16.0, color: Colors.grey),
                      const SizedBox(width: 5.0),
                      Flexible(
                        child: Text(locationName),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        countReviews.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      _buildReviewRateStars(countReviews),
                      const SizedBox(width: 5.0),
                      Text('($countReviews)'),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.directions_walk, size: 16.0, color: Colors.grey),
                          const SizedBox(width: 5.0),
                          Text(distanceKm.toString()),
                        ],
                      ),
                      const SizedBox(width: 16.0),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.local_hospital, size: 16.0, color: Colors.grey),
                          const SizedBox(width: 5.0),
                          Text(type),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewRateStars(int reviewRate) {
    int cappedReviewRate = reviewRate.clamp(0, 5);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < cappedReviewRate) {
          return const Icon(Icons.star, size: 16.0, color: Colors.amber);
        } else {
          return const Icon(Icons.star_border, size: 16.0, color: Colors.grey);
        }
      }),
    );
  }
}