import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/ui/screens/screenaddsodes.dart';

void main() {
  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      '/cardsodes': (BuildContext context) => new ScreenAddSodes(),
    },
  ));
}
