import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: StackDemo(),
  ));
}

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
      ),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Positioned(
              top: 50,
              left: 100,
              child:
          Container(
            height: 100,
            width: 100,
            child: Text('Positioned Child'),
            color: Colors.green,)
          ),
          Align(alignment: Alignment.topRight,
          child: Container(
            height: 100,
            width: 100,
            child: Text('Positioned Child'),
            color: Colors.blue,)
          ),
        Container(
          height: 100,
          width: 100,
          child: Text('Positioned Child'),
          color: Colors.red,)
        ],
      ),
    );
  }
}