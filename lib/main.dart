import 'package:dhaman_e_services/screens/login_screen.dart';
import 'package:dhaman_e_services/screens/onboard/on_boarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( DhamanApp());
}

class DhamanApp extends StatelessWidget {
  const DhamanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
