import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/already_have_an_account.dart';
import 'package:flutter_application_1/components/rounded_button.dart';
import 'package:flutter_application_1/components/rounded_input_field.dart';
import 'package:flutter_application_1/components/rounded_password_field.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/Login/login_screen.dart';
import 'package:flutter_application_1/screens/Sign%20up/components/or_divider.dart';
import 'package:flutter_svg/svg.dart';

import 'components/background.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(),
      
      
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.bold),), 
        Image.asset("lib/assets/images/signup.png",height: size.height*0.35 ,),
        RoundedInputField(hintText: "Your Email",onChanged: (value){},),
        RoundedPasswordField(onChanged: (value){},),
        RoundedButton(text: "SIGN UP", press: (){},),
        AlreadyHaveAnAccountCheck(login:false,press: (){Navigator.push(context, MaterialPageRoute(builder:  (context){return LoginScreen();}));},),
        OrDivider(), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialIcons(iconSrc: "lib/assets/icons/facebook.svg",press: (){print("tested");},),
            SocialIcons(iconSrc: "lib/assets/icons/twitter.svg",press: (){},),
            SocialIcons(iconSrc: "lib/assets/icons/google-plus.svg",press: (){},),

          ],
        )
        

      ],

    ),);
  }
}

class SocialIcons extends StatelessWidget {
  final String iconSrc; 
  final Function press; 
  const SocialIcons({
    Key key, this.iconSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
        margin: EdgeInsets.symmetric(horizontal:10 ),
        padding: EdgeInsets.all(20), 
        decoration: BoxDecoration(border: Border.all(width: 2, color: kPrimaryLightColor), 
        shape: BoxShape.circle
        ),
        child: SvgPicture.asset(iconSrc,height:20,width:20),
        ),
    );
  }
}

