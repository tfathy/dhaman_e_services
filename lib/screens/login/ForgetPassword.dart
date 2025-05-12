import 'package:flutter/material.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
        height: 30,
        child: Center(
        child: Text(
        'forget passord',
        style: TextStyle(
        color: Color(0xff641B2E),
    fontSize: 14,
    fontWeight: FontWeight.w700,
    ),
    ),
    ));
  }
}
