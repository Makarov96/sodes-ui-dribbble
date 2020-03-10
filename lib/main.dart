import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/ui/screens/screensodes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: ScreenSodes(),
    );
  }
}

