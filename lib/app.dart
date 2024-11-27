import 'package:flutter/material.dart';
import 'presentation/screens/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Appointment',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        hintColor: Colors.grey[400],
        primaryTextTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.grey[600]),
        ),
      ),
      home: HomePage(),
    );
  }
}