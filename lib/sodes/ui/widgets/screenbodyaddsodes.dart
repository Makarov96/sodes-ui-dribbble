import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/model/model_info_sodes.dart';
import 'package:sodes_ui/sodes/ui/widgets/buycard.dart';
import 'package:sodes_ui/widgets/custombutton.dart';

class ScreenBodyAddSodes extends StatefulWidget {
  List<ModelInfoSode> arraysode = List<ModelInfoSode>();
  ScreenBodyAddSodes({Key key, this.arraysode}) : super(key: key);

  @override
  _ScreenBodyAddSodesState createState() => _ScreenBodyAddSodesState();
}

class _ScreenBodyAddSodesState extends State<ScreenBodyAddSodes> {
  @override
  Widget build(BuildContext context) {
    @override
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final children = <Widget>[];

    for (var soda in widget.arraysode) {
      children.add(BuyCard(
        modelInfoSode: ModelInfoSode(
            imagePath: soda.imagePath, name: soda.name, price: soda.price),
      ));
    }

    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.13),
      width: screenWidth,
      height: screenHeight * 0.87,
      child: Stack(children: <Widget>[
        ListView(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, top: screenHeight * 0.04),
            children: children),
        Positioned(
            left: screenWidth * 0.05,
            bottom: screenHeight * 0.02,
            child: Center(
                child: CustomButton(
              onPressed: () {},
            )))
      ]),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
          color: Color(0xFF1E2843)),
    );
  }
}
