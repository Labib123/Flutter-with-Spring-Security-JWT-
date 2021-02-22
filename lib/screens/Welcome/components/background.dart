import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  
  final Widget child; 
  const Background({
  @required  Key key, this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size; //this size provides us total height and width of our screen 

    return SingleChildScrollView(
          child: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(bottom: 0,left: 0,child: Image.asset("lib/assets/images/main_bottom.png",width: size.width *0.3,
            )),
            child,
          ],
        ),

      ),
    );
  }
}