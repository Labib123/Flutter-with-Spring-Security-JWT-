import 'package:flutter/material.dart'; 

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required  this.child, this.size
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("lib/assets/images/login_bottom.png"), width: size.width * 0.4 ,),
            child
          ],
        
          ),
    );
  }
}