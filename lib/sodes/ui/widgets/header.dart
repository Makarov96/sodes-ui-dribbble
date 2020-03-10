import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  Header({Key key}) : super(key: key);

  //image
  final cardImage = InkWell(
   onTap: (){
     print("say hi 😄");
   },
    child: Container(
    height: 60.0,
    width:  60.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(18.0)),
      image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage("https://st2.depositphotos.com/4431055/11855/i/950/depositphotos_118551804-stock-photo-woman-holding-megaphone.jpg")
        ),
    ),
  ),
  );

  //letters
  final letters = Container(
    child: Text("JuiceUp",style: GoogleFonts.oleoScriptSwashCaps(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 30
      )
    )),
  );

  Widget structured(context){
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: screenHeight*0.05),
      padding: EdgeInsets.all(10.0),
      width: screenWidth,
      height: screenHeight*0.1,

      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          letters ,
          cardImage
        ]
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return structured(context);
  }
}