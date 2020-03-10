import 'package:flutter/material.dart';

class BackGroundColor extends StatelessWidget {
  double height;

  
  BackGroundColor({Key key, @required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeigh = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if(this.height == null){
      height = screenHeigh;
    }


    return Container(
      width: screenWidth,
      height: height,

      decoration: BoxDecoration(
        color: Color(0xFF1E2843)
      ),
    );
  }
}