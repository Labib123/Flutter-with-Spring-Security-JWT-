import 'package:flutter/material.dart';
class DisplayDialog{
DisplayDialog(BuildContext context, String title, String text){
    showDialog(
      context: context,
      builder: (context) =>
        AlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [FlatButton(
            child: Text("Try Again"),
            onPressed: () {Navigator.of(context).pop();},
          )],
        ),

        
    );
}
}