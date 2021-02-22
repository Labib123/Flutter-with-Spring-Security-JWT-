import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_field_container.dart';

import '../constants.dart'; 
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon; 
  final ValueChanged<String> onChanged;
  final TextEditingController usernameController = new TextEditingController();
  
   RoundedInputField({
    Key key, 
    this.hintText, 
    this.icon = Icons.person, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        controller: usernameController,
        
        decoration: 
        InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,),
          hintText: hintText,

          border: InputBorder.none,
          ),
          ),
    );
  }
}

