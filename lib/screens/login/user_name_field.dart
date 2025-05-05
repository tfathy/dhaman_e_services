import 'package:flutter/material.dart';

class UserNameField extends StatelessWidget {
  Color fontColor = Color(0xff641B2E);
  TextEditingController usernameController;
  Icon icon;
  String title;
  UserNameField({super.key,required this.usernameController, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: usernameController,
      validator: (value){
        if(! isValidEmail(value)){
          return 'please enter a valid email addrress';
        }
      },
      style: TextStyle(fontSize: 18),
      decoration: InputDecoration(
        suffixIcon: icon,
        labelText: title,
        labelStyle: TextStyle(fontSize: 22, color: fontColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff670D2F),
            width: 2
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xff641B2E),
                width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
                width: 2
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),

      ),
    );
  }

  bool isValidEmail(String? value) {
    if(value!= null){
      if(value.contains("@")){
        return true;
      }
    }
    return false;
  }
}
