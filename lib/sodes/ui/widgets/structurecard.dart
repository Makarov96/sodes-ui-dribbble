import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/model/model_info_sodes.dart';
import 'package:sodes_ui/sodes/ui/screens/screenaddsodes.dart';

class StructureCard extends StatefulWidget {
  ModelInfoSode modelinfosoda;
  List<ModelInfoSode> sendInfo =List<ModelInfoSode>();
  StructureCard({Key key, this.modelinfosoda}) : super(key: key);

  @override
  _StructureCardState createState() => _StructureCardState();
}

class _StructureCardState extends State<StructureCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final headersoda = Column(
      children: <Widget>[
        Flexible(
            child: Container(
          margin: EdgeInsets.only(top: screenHeight * 0.02),
          child: Text(widget.modelinfosoda.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25)),
        ))
      ],
    );

    final card = Container(
      margin:
          EdgeInsets.only(top: screenHeight * 0.03, right: screenWidth * 0.05),
      height: screenHeight * 0.50,
      width: screenWidth * 0.68,
      child: headersoda,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(widget.modelinfosoda.imagePath)),
          borderRadius: BorderRadius.all(Radius.circular(25)),
          gradient: LinearGradient(
              colors: [Color(0xFFF78C94), Color(0xFF4D3D54)],
              begin: Alignment.center,
              end: Alignment.bottomCenter)),
    );

    final infosoda = Row(children: <Widget>[
      Container(
        child: Text("\$ ${widget.modelinfosoda.price}",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: EdgeInsets.only(left: 105),
        child: IconButton(
            iconSize: 36,
            color: Colors.white,
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              //Navigator.of(context).pushNamed('/cardsodes');

              widget.sendInfo.add(ModelInfoSode(imagePath: widget.modelinfosoda.imagePath,name:widget.modelinfosoda.name, 
              price: widget.modelinfosoda.price ));      
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new ScreenAddSodes(infosode: widget.sendInfo )));
            }),
      )
    ]);

    return Stack(
      children: <Widget>[
        card,
        Positioned(left: 20, bottom: 50, child: infosoda)
      ],
    );
  }
}
