import 'package:dhaman_e_services/screens/login/ForgetPassword.dart';
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
    return
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
              SizedBox(height: 50),
              UserNameField(
                title: 'email',
                icon: Icon(Icons.email),
                usernameController: userNameController,
              ),
              SizedBox(height: 10),
              PasswordField(
                title: 'Password', passwordController: pwController,),
              SizedBox(height: 50),
              LoginButton(),
              SizedBox(height: 30),
              Forgetpassword(),
            ],
          ),
        ),
      );
  }
}







