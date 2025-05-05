import 'package:dhaman_e_services/screens/landing.dart';
import 'package:dhaman_e_services/screens/login_screen.dart';
import 'package:dhaman_e_services/screens/transactions.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showLoading = true;
        setState(() {});
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            showLoading = false;
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LandingScreen()),
            );
          });
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff670D2F),
        minimumSize: Size(250, 60),
        elevation: 10,
        shadowColor: Color(0xff8A2D3B),
      ),
      child:
          showLoading
              ? CircularProgressIndicator()
              : Text(
                'Login',
                style: TextStyle(color: Color(0xffFBDB93), fontSize: 26),
              ),
    );
  }
}
