import 'package:flutter/material.dart';
import 'package:sample_flupro/FirstPage.dart';
import 'package:sample_flupro/secondPage.dart';

void main(){
  runApp(MaterialApp(
    home: First(),
    routes: {
      "Second":(context)=>Second(),
    },
  ));
}