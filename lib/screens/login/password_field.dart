import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  TextEditingController passwordController;
  String title;
  PasswordField({
    super.key,
    required this.passwordController,
    required this.title
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isHiddenn = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isHiddenn,
      validator: (value) {
        if (!isValidPassord(value)) {
          return 'invalid password';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: InkWell(
          child:
              _isHiddenn ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
          onTap: () {
            _isHiddenn = !_isHiddenn;
            setState(() {
            });
          },
        ),
        labelText: widget.title,
        labelStyle: TextStyle(fontSize: 22, color: Colors.blue),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }

  bool isValidPassord(String? value) {
    if (value != null) {
      if (value.length >= 8) {
        return true;
      }
    }
    return false;
  }
}
