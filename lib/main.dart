import 'package:flutter/material.dart';
import 'package:whats_app/whats_app_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: "Whats App",
      theme: this._getTheme(),
      home: WhatsAppHome(),
      debugShowCheckedModeBanner: false,
    );
  }



 ThemeData _getTheme() {
   return ThemeData(
     primaryColor: new Color(0xff075e54),
     accentColor: new Color(0xff25D366)
   );
  }

}
