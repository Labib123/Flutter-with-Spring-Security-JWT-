import 'package:flutter/material.dart' ;
import 'package:flutter_application_1/components/text_field_container.dart';

import '../constants.dart'; 
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged; 
  static  bool obscureText = true; 
  final TextEditingController passwordEditingController = new TextEditingController();
   RoundedPasswordField({
    Key key, this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: obscureText,
        controller: passwordEditingController,
        decoration:InputDecoration(hintText: "password",icon: Icon(Icons.lock,color: kPrimaryColor,)
      , suffixIcon: GestureDetector(onTap: (){obscureText = false;},child: Icon(Icons.visibility,color: kPrimaryColor,)),
      border: InputBorder.none
      ))
    );
  }
}

