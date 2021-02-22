import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/rounded_button.dart';

import 'package:flutter_application_1/screens/Welcome/components/welcome_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text("User dashboard",style: TextStyle(fontWeight: FontWeight.bold)),
        RoundedButton(text:"Back to homepage ",
        press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return WelcomeScreen(); }));},)
      ],),
      
    );
  }
}