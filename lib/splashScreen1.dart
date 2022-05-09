import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flupro/main.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () =>
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen(),)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(image:
          //AssetImage('assets/images/china.jpg'),
          NetworkImage('https://stimg2.cardekho.com/images/carNewsEditorImages/816x544/20220505_213158/29029/maruti0.jpg'),
            fit: BoxFit.cover,
        ),)

        //Image.asset('assets/images/happy_meal_small.png')
        //Image.network('https://stimg2.cardekho.com/images/carNewsEditorImages/816x544/20220505_213158/29029/maruti0.jpg'),
        
      ),
    )
    );

  }
}