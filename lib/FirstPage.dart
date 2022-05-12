import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_flupro/secondPage.dart';

void main(){
  runApp(MaterialApp(
    home: First(),
  ));
}

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator and routes'),
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.of(context,).pushReplacement(MaterialPageRoute(builder: (context) => Second(),));
            //Navigator.push(context, MaterialPageRoute(builder: (context) => Second(),));
            Navigator.pushNamed(context, "Second");
            //Navigator.of(context).pushNamed("Second");
          },
          child: Text("Go To"),
        ),
      ),
    );
  }
}