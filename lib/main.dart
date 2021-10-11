import 'package:flutter/material.dart';
import 'package:home_app/home.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  title: "Poke App",
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Arial",
        primaryColor: Colors.lightBlue,
      ),
      home: mainApp(),
      routes: <String, WidgetBuilder> {
        "home" : (BuildContext context) => new HomePage(),
      },
    );
  }

}
class mainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return mainAppState();
  }
}

class mainAppState extends State<mainApp> {

  void navigateNextPage() {
    Navigator.of(context).pushReplacementNamed("home");
  }

  startSplash() async {
    return new Timer(Duration(milliseconds: 3000), navigateNextPage);
  }

  @override
  void initState() {
    
    super.initState();
    startSplash();
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Image.asset("assets/images/splash_screen.jpg", fit: BoxFit.fill,),
    );
  }
}
