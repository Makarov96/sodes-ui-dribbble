import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  CustomButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return  InkWell(
       
        onTap: onPressed,
        child: Container(
          height: screenHeight * 0.07,
          width: screenWidth * 0.9,
          child: Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "\$ money",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  Text(
                    "Pay",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          decoration: BoxDecoration(
              color: Color(0xFFF78C94),
              borderRadius: BorderRadius.all(Radius.circular(55.0))),
        ),
      );
  }
}
