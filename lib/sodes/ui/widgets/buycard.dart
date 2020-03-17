import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/model/model_info_sodes.dart';

class BuyCard extends StatefulWidget {
  ModelInfoSode modelInfoSode;
  BuyCard({Key key, this.modelInfoSode}) : super(key: key);

  @override
  _BuyCardState createState() => _BuyCardState();
}

class _BuyCardState extends State<BuyCard> {
  @override
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        Container(
          height: screenHeight * 0.25,
          width: screenWidth * 0.35,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.modelInfoSode.imagePath),
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.05),
          child: Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.modelInfoSode.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                )),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Lorem ipsum dolor sit amet",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "\$ ${widget.modelInfoSode.price}",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Row(children: <Widget>[
                  IconButton(
                      iconSize: 40.0,
                      color: Colors.white,
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: () {}),
                  IconButton(
                      iconSize: 40.0,
                      color: Colors.white,
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {})
                ])),
          ]),
        )
      ],
    );
  }
}
