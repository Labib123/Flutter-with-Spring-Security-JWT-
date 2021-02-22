import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/already_have_an_account.dart';
import 'package:flutter_application_1/components/display_dialog.dart';
import 'package:flutter_application_1/components/rounded_button.dart';
import 'package:flutter_application_1/components/rounded_input_field.dart';
import 'package:flutter_application_1/components/rounded_password_field.dart';
import 'package:flutter_application_1/screens/Dashboard/dashboard_screen.dart';
import 'package:flutter_application_1/screens/Login/components/background.dart';
import 'package:flutter_application_1/screens/Sign%20up/signup_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

import '../../../main.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TextEditingController usernameController;
    // TextEditingController passwordCotntroller;
    RoundedInputField roundedInputField =
        RoundedInputField(hintText: "Your Email", onChanged: (value) {});
    RoundedPasswordField roundedPasswordField = RoundedPasswordField(
      onChanged: (value) {},
    );

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset("lib/assets/icons/login.svg",
              height: size.height * 0.30),
          roundedInputField,
          roundedPasswordField,
          RoundedButton(
            text: "LOGIN",
            press: () async {
              var username = roundedInputField.usernameController.text;
              var password =
                  roundedPasswordField.passwordEditingController.text;
              var jwt = await attemptLogIn(username, password);
              print(jwt);
              if (jwt != null) {
                storage.write(key: "jwt", value: jwt);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DashboardScreen();
                } //.fromBase64(jwt)
                    ));
              } else if (username.length < 3)
                DisplayDialog(context, "Invalid Username",
                    "The username should be at least 4 characters long");
              else if (password.length < 3)
                DisplayDialog(context, "Invalid Password",
                    "The password should be at least 4 characters long");
              // else{
              //   var res = await attemptSignUp(username, password);
              //   if(res == 201)
              //     displayDialog(context, "Success", "The user was created. Log in now.");
              //   else if(res == 409)
              //     displayDialog(context, "That username is already registered", "Please try to sign up using another username or log in if you already have an account.");
              else {
                DisplayDialog(context, "Credentials Error",
                    "Wrong username or password.");
              }
            },
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            },
          )
        ],
      ),
    );
  }

  Future<String> attemptLogIn(String username, String password) async {
    Map<String, String> headers = {"Content-Type": "application/json"};
    var res = await http.post("$SERVER_IP/authenticate",
        body: jsonEncode({"username": username, "password": password}),
        headers: headers);
    if (res.statusCode == 200) return res.body;
    return null;
  }
}
