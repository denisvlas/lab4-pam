import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctorappointment/components/CategoryItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const categories = [
  {
    "path": "assets/icons/tooth.svg",
    "label": "Dentistry",
    "color": Color.fromRGBO(220, 148, 151, 1)
  },
  {
    "path": "assets/icons/heart.svg",
    "label": "Cardiology",
    "color": Color.fromRGBO(147, 193, 158, 1)
  },
  {
    "path": "assets/icons/lungs.svg",
    "label": "Pulmonology",
    "color": Color.fromRGBO(245, 173, 126, 1)
  },
  {
    "path": "assets/icons/general.svg",
    "label": "General",
    "color": Color.fromRGBO(172, 161, 205, 1)
  },
  {
    "path": "assets/icons/brain.svg",
    "label": "Laboratory",
    "color": Color.fromRGBO(222, 182, 181, 1)
  },
  {
    "path": "assets/icons/stomach.svg",
    "label": "Vaccination",
    "color": Color.fromRGBO(137, 204, 219, 1)
  },
  {
    "path": "assets/icons/lab.svg",
    "label": "Vaccination",
    "color": Color.fromRGBO(137, 204, 219, 1)
  },
  {
    "path": "assets/icons/vaccine.svg",
    "label": "Vaccination",
    "color": Color.fromRGBO(137, 204, 219, 1)
  },
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.location_on, color: Colors.black),
          onPressed: () {},
        ),
        title: const Row(
          children: [
            Text('Seattle, USA', style: TextStyle(color: Colors.black)),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search doctor...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 163,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/doctor_bg.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  // Doctor Image

                  SizedBox(width: 16),
                  // Banner Text
                  Expanded(
                    child: FractionallySizedBox(
                      widthFactor: 0.5, // Setează lățimea la 50% din container
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Text(
                            'Looking for Specialist Doctors?',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 25),
                          Text(
                            'Schedule an appointment with our top doctors.',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height:
                        1.5, // This is equivalent to line-height: 24px / 16px = 1.5
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: categories.map((category) {
                  return CategoryItem(
                    path: category["path"].toString(),
                    label: category["label"].toString(),
                    color: category["color"] as Color,
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Text(
                  "Nearby Medical Centers",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height:
                        1.5, // This is equivalent to line-height: 24px / 16px = 1.5
                  ),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height:
                        1.5, // This is equivalent to line-height: 21px / 14px = 1.5
                  ),
                ),
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(height: 232.0, autoPlay: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
