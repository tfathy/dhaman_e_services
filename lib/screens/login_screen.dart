import 'package:dhaman_e_services/screens/login/login_button.dart';
import 'package:dhaman_e_services/screens/login/logo_area.dart';
import 'package:dhaman_e_services/screens/login/password_field.dart';
import 'package:dhaman_e_services/screens/login/user_name_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFBDB93),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffFBDB93),
          title: Text(
            'Login',
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 26,
              color: Color(0xff641B2E),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              LogoArea(),
              SizedBox(height: 70),
              UserNameField(
                title: 'email',
                icon: Icon(Icons.email),
                usernameController: userNameController,
              ),
              SizedBox(height: 30),
              PasswordField(title: 'Password',passwordController:  pwController,),
              SizedBox(height: 100),
              LoginButton(),
              SizedBox(height: 30),
              forgetPassword(),
            ],
          ),
        ),
      ),
    );
  }
}







class forgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
    );
  }
}
