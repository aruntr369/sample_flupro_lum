import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyExpanded(),
  ));
}

class MyExpanded extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                width: 150,
                height: 100,
                child: Center(child: Text('Data 1')),
              ),
            ),
            Container(
              color: Colors.yellow,
              height: 200,
              width: 200,
              child: Center(child: Text('Data 2')),
            ),
            Container(
              color: Colors.green,
              width: 200,
              height: 100,
              child: Center(child: Text('Data 3')),
            )
          ],
        ),
      ),
    );
  }
}