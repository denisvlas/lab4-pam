import 'package:doctor_appointment/widgets/DoctorCard.dart'; // Importă DoctorList
import 'package:doctor_appointment/models/doctor.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../widgets/CategoryItem.dart';
import '../widgets/MedicalCenterCard.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/category.dart'; // Import the Category model

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = [];
  List<Doctor> doctors = [];
  List<MedicalCenter> clinics = [];

  @override
  void initState() {
    super.initState();
    loadCategories();
    loadDoctors();
    loadClinics();
  }

  Future<void> loadClinics() async {
    final String jsonString = await rootBundle.loadString('assets/v1.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List<dynamic> clinicsJson = jsonData['nearby_centers'];

    setState(() {
      clinics =
          clinicsJson.map((json) => MedicalCenter.fromJson(json)).toList();
    });
  }

  Future<void> loadCategories() async {
    final String jsonString = await rootBundle.loadString('assets/v1.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List<dynamic> categoriesJson = jsonData['categories'];

    setState(() {
      categories =
          categoriesJson.map((json) => Category.fromJson(json)).toList();
    });
  }

  Future<void> loadDoctors() async {
    final String jsonString = await rootBundle.loadString('assets/v1.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List<dynamic> doctorsJson = jsonData['doctors'];

    setState(() {
      doctors = doctorsJson.map((json) => Doctor.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.location_on, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          children: [
            Text('Seattle, USA', style: TextStyle(color: Colors.black)),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search doctor...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Banner
              Container(
                width: double.infinity,
                height: 163,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/doctor_bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Categories
              const Text(
                'Categories',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),

              // Grid of categories
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: itemWidth / (itemWidth + 20),
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return CategoryItem(
                    path: category.path,
                    label: category.label,
                    color: Color(
                        int.parse(category.color.replaceAll('#', '0xFF'))),
                  );
                },
              ),
              const SizedBox(height: 20),

              // Nearby Medical Centers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Medical Centers',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: clinics.length,
                  itemBuilder: (context, index) {
                    final clinic = clinics[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: MedicalCenter(
                        title: clinic.title,
                        image: clinic.image,
                        countReviews: clinic.countReviews,
                        distanceKm: clinic.distanceKm,
                        locationName: clinic.locationName,
                        reviewRate: clinic.reviewRate,
                        type: clinic.type,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Doctors List
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctors',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Doctor List Widget

              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: doctors.map((doctor) {
                  return DoctorCard(doctor: doctor);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
