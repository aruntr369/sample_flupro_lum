import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flupro/stateMagProvider/page1.dart';
import 'package:sample_flupro/stateMagProvider/provider/providerDemo.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProviderDemo(),
      child: MaterialApp(
        home: Page1(),
      ),
    );
  }
}
