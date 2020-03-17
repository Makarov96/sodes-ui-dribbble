import 'package:flutter/material.dart';
import 'package:sodes_ui/sodes/ui/screens/screenaddsodes.dart';
import 'package:flutter/services.dart';

import 'navbaruser.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    )
  );
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarUser(),
      routes: <String, WidgetBuilder>{
        '/cardsodes': (BuildContext context) => ScreenAddSodes(),
      },
    );
  }
}
