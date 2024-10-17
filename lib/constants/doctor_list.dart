import 'package:flutter/material.dart';

class Doctor {
  final String name;
  final String specialty;
  final String location;
  final double rating;
  final int reviews;
  final String imageUrl;

  Doctor(
      {required this.name,
      required this.specialty,
      required this.location,
      required this.rating,
      required this.reviews,
      required this.imageUrl});
}

class DoctorList extends StatelessWidget {
  final List<Doctor> doctors = [
    Doctor(
        name: 'Dr. David Patel',
        specialty: 'Cardiologist',
        location: 'Cardiology Center, USA',
        rating: 5.0,
        reviews: 1872,
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/ab8e/d8d0/b0db1e98ab7f1a31afba13769f282033?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HEFib6NI3OLKRXAhdUDhESy6N7m5wWxT5hnnR654~SuxMt617Y2YESBcaDAO25r6UC7oCCSBEh7ZkSFzSeFqTIuUzBzj7rIl1fjRQsDZUVdIEvvuw3FbZWxk3uwMRFCYhYJRnNnNR2o0HeEfxz2e9wjej2AIiQgtMHIWLHNYSZyeewKORkPtS9lXkJbaEv4m2JalrCJ3q4xXOKtn4o7lxiyANhiKdmI9zxE44r4-7ebAJhQFcUDFjQ3S93hph~1Q~rv~Cw93haNdmytybv517lSWYWbm~5gz0yI6-RV09GV8YGn4akchunrFTKIfYzFVEDA89b9QPc2ZDyT-dgbBEg__"),
    Doctor(
        name: 'Dr. Jessica Turner',
        specialty: 'Gynecologist',
        location: "Women's Clinic, Seattle USA",
        rating: 4.9,
        reviews: 127,
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/eda2/ee92/bffb300537aa46caf4c65351a0a20dde?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IJ8hNEjXiZ0IJlLkHu-PAxPPkvOuJi9Zht4376dKNua697PCZILXCD5fYgHuBBBnqo~PEUtxz4ohndq2FMPK3KtclERp0C6xIEFSVSgTR2ViDQRZ5tx-WfcWMnPR5RmbshYda0oMtNuQ8uFqUevn8jMdjAjWe7cLQoFVsQmQPA3DVq~HltPIull0Ilep3MBDmwErDRr2dpsrP~NMoEDZoUN4zWRQQydZpoBrD8JGqwOXUurIpwNvvnaROC-d5omuc5fN-iZemSBWcPI-sXrXT5n~rlYlxFmi4krdy~XVocjzXw9yyP~TNhyhgyO0UlyS7STSElCJG9FqEFfjiRtUTg__"),
    Doctor(
        name: 'Dr. Michael Johnson',
        specialty: 'Orthopedic Surgery',
        location: 'Maple Associates, NY USA',
        rating: 4.7,
        reviews: 5273,
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/86b5/e652/0800f3ee36c944ded270e36c1763aaed?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HgIsfLm~gzu5pFjwuLVfIb-FiBaK0J1UnCO06AaGkrgxcA-5OdDeh3fueB2~t8B7wvQWX-~Ty9Rbtk7jCckimtY0YJBf-6D6m67Ps-r2tVqbXKN~ySiQ7IhoU0dxtzJQ4tif57DX72qhfA~AqcGnX2GtU0oivFGX0joH4011BgQIZXntj6Afi4dFWKvvwUqR~GDMLaldiC5e~XAdbUnA~16quLbvzXUg~ATexAgRmm5kIpMi0PyyEocNQFjfPIZm0rFL5sOaZ35lH~qLoXvCnHYo0XcwiPHkixp8bVUULNX6yTOW-QQhChD52bPTz~5O~epOw~3um3QBUcv3EAe2ag__"),
    Doctor(
        name: 'Dr. Emily Walker',
        specialty: 'Pediatrics',
        location: 'Serenity Pediatrics Clinic',
        rating: 5.0,
        reviews: 405,
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/f501/868c/d62449885187cf0eb057a3fdee941589?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Npw95p7nvROKuLKeAMRy6RUvohsrkaA0006KO35THwd26EqjI9bKYVxkM-rcZXUFCFpq~C0NPf9Nertpd6RigwWaydpo6lm9jkY6i97c9vujAR-OBbMdGheZi6auuc3mL3U-VbX15kgOZrdLchC6kidR-K0w1I7bo90mS4bHgUdmHbqWRy4VAwR1Ad-j33~l~zdhGc~7tcIMEDM4sTuePXkAx2TC6Iesifjo0UatQJGzzGqfqsIaXIokykdYTOWo1G-~OkNfVZ7aE6B1txiAnh0qZB-iVPQiPBoDFdKNDGesHs0HSbNSMCojCkQjf3kfqVP0t6AwJvtqqzwieB7Nxg__"),
    Doctor(
        name: 'Dr. Emily Walker',
        specialty: 'Pediatrics',
        location: 'Serenity Pediatrics Clinic',
        rating: 5.0,
        reviews: 405,
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/177e/81a4/cbbe443ae4d16ccaa140e5590a4e0a76?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=e0rub-1K-wm9vtyMttgX5j6vT1QQn-6takgK3DPx-A3TzEjvsPzE2EmwB9VJhc8vM30j3GdPTXmBIryyui2Co3122eE3nK0u0RKz2ic2vg32OIruRHiaxkETzRsjjKgO9CQaYgGDQvvqj7sZgUHBrg7~R6eQyv~2HC2ao0OjtCXAIYVdYPrTAz0R~LslLlE1HJLIB7cFVfO2hATO4H99faAH9vlsevvMDIlKE9H6YDtVQquXZkcMSG9obfVp7cfn7r4e02QDZKv9dJSTm~71PCRQD3s2EqiD6XVdx1Bd~Wa3vB6foRsMDqnLbh-B4C3dnikWyYzyqqX5PqYTKRuOPw__"),
  ];

  DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '532 founds',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Default TI',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: doctors.map((doctor) {
            return DoctorCard(doctor: doctor);
          }).toList(),
        ),
      ],
    );
  }
}

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
                  doctor.imageUrl,
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
                    doctor.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    doctor.specialty,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    doctor.location,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16.0, color: Colors.amber),
                      Text(
                        '${doctor.rating}',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '${doctor.reviews} Reviews',
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
