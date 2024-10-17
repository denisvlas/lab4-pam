import 'package:flutter/material.dart';

class MedicalCenter extends StatelessWidget {
  final String name;
  final String address;
  final int rating;
  final String reviews;
  final String distance;
  final String type;
  final String imageUrl;

  const MedicalCenter({
    Key? key,
    required this.name,
    required this.address,
    required this.rating,
    required this.reviews,
    required this.distance,
    required this.type,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.network(
              imageUrl,
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 100.0,
                  color: Colors.grey[300],
                  child: const Icon(Icons.broken_image,
                      size: 50, color: Colors.grey),
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
                  name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    const Icon(Icons.location_on,
                        size: 16.0, color: Colors.grey),
                    const SizedBox(width: 5.0),
                    Expanded(child: Text(address)),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    _buildRatingStars(rating),
                    const SizedBox(width: 5.0),
                    Text('($reviews Reviews)'),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.directions_walk,
                            size: 16.0, color: Colors.grey),
                        const SizedBox(width: 5.0),
                        Text(distance),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.local_hospital,
                            size: 16.0, color: Colors.grey),
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
    );
  }

  // Funcție pentru a genera stelele ratingului
  Widget _buildRatingStars(int rating) {
    // Limitează ratingul la maxim 5
    int cappedRating = rating.clamp(0, 5);

    return Row(
      children: List.generate(5, (index) {
        if (index < cappedRating) {
          return const Icon(Icons.star, size: 16.0, color: Colors.amber);
        } else {
          return const Icon(Icons.star_border, size: 16.0, color: Colors.grey);
        }
      }),
    );
  }
}
