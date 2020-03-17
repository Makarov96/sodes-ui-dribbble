import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sodes_ui/sodes/ui/widgets/header.dart';
import 'package:sodes_ui/sodes/ui/widgets/listcardsodas.dart';
import 'package:sodes_ui/sodes/ui/widgets/listhistories.dart';
import 'package:sodes_ui/sodes/ui/widgets/mostpopulard.dart';
import 'package:sodes_ui/widgets/backgroundcolor.dart';

class ScreenSodes extends StatefulWidget {
  ScreenSodes({Key key}) : super(key: key);

  @override
  _ScreenSodesState createState() => _ScreenSodesState();
}

class _ScreenSodesState extends State<ScreenSodes> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          BackGroundColor(
            height: null,
          ),

           ListView(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
            children: <Widget>[  ListHistories(),MostPopular(), LisCardSodas()],
          ),
          Column(children: <Widget>[
            Header(),
          ]),
        ],
      ),
    );
  }
}
