import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.7, top: MediaQuery.of(context).size.height*0.03),
      child: Text("Most Popular", style: TextStyle(
        color:Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18
      ))
    );
  }
}