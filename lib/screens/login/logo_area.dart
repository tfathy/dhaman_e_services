import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LogoArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffFBDB93)),
      child: Center(
        child: SvgPicture.asset(
          "assets/images/svg/dhaman.svg",
          height: 130,
          width: 100,
          fit: BoxFit.cover,
          color: Color(0xff641B2E),
        ),
      ),
    );
  }
}