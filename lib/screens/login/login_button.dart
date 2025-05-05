import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      showLoading = true;
      setState(() {
      });
      Future.delayed(Duration(seconds: 4),(){
        setState(() {
          showLoading = false;
        });
      });
    },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff641B2E),
            minimumSize: Size(300, 70),
            elevation: 10,
            shadowColor: Color(0xff8A2D3B)
        )
        ,child:showLoading?CircularProgressIndicator():
        Text('Login', style: TextStyle(color: Color(0xffFBDB93),fontSize: 26),)
    );
  }
}