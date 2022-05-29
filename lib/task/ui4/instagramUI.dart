import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flupro/task/ui4/homeScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white,
      primarySwatch: Colors.grey,
        // textTheme: GoogleFonts.sacramentoTextTheme(
        // Theme.of(context).textTheme,),
      ),
      home: HomeScreen(),
    );
  }
}
