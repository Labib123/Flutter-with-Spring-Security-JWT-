import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Login/login_screen.dart';
import 'package:flutter_application_1/screens/Sign%20up/signup_screen.dart';
import './background.dart';
import 'package:flutter_application_1/constants.dart';
import '../../../components/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        return Background(
          key: null,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("WELCOME TO MYAPP",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.05,),
            
            Image.asset("lib/assets/icons/chat.png",
            height: size.height *0.45 ,), 
            SizedBox(height: size.height*0.05,),

            RoundedButton(text: "LOGIN",
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen(); }));}
            , 
            ) ,
             RoundedButton(text: "SIGN UP",
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen(); }));}
            , 
            color: kPrimaryLightColor,
            textColor: Colors.black,
            ) 
             ] ,
             ),
          
        );
  }
  

}

