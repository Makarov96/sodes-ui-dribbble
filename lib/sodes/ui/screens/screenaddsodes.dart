import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/model/model_info_sodes.dart';
import 'package:sodes_ui/sodes/ui/widgets/headeraddsodes.dart';
import 'package:sodes_ui/sodes/ui/widgets/screenbodyaddsodes.dart';

class ScreenAddSodes extends StatefulWidget {
  final List<ModelInfoSode> infosode;
  ScreenAddSodes({Key key, this.infosode}) : super(key: key);

  @override
  _ScreenAddSodesState createState() => _ScreenAddSodesState();
}

class _ScreenAddSodesState extends State<ScreenAddSodes> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: <Widget>[


        Stack(children:<Widget>[
          HeaderAddSodes(),
         
          ScreenBodyAddSodes(arraysode: widget.infosode)
        ])
      
      ]),
    );
  }
}
