import 'package:flutter/material.dart' ; 
import 'screens/Welcome/components/welcome_screen.dart';
import './constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert' show json, base64, ascii;

const SERVER_IP = 'http://192.168.0.102:80';
final storage = FlutterSecureStorage();
main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
     return 
     MaterialApp(
       title: 'My first demo',
       theme: ThemeData(
         primaryColor: kPrimaryColor , scaffoldBackgroundColor: Colors.white, 
         ),
       home: WelcomeScreen(),
       
       debugShowCheckedModeBanner: false,
     );
     }
}


  
