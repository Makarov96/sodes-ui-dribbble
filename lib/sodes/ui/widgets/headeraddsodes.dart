import 'package:flutter/material.dart';

class HeaderAddSodes extends StatelessWidget {
  const HeaderAddSodes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final Header = Container(
      width: screenWidth,
      height: screenHeight * 0.15,
      decoration: BoxDecoration(color: Color(0xFF3B445D)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          IconButton(
            iconSize: 30.0,
            color: Colors.white,
            icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.of(context).pop();
          }),
          SizedBox(width: screenWidth*0.27),
          Text("My cart", style: TextStyle(
            color:Colors.white,
            fontSize:25.0
          ),)
      ]),
    );

    return Header;
  }
}
