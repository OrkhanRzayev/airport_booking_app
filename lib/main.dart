import 'package:flutter/material.dart';
import 'package:training_app/screens/bottom_bar.dart';
import 'package:training_app/utilitis/styles.dart';

void main() {
  runApp(const BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking App',
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}
