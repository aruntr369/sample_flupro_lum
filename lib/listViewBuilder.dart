import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListWithBuilder(),));
}

class ListWithBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListWithBuilderState();

}

class ListWithBuilderState extends State {

  List<String> images = [
    'assets/images/happy_meal_small.png',
    'assets/images/chat_icon.png',
    'assets/images/happy_meal_small.png',
    'assets/images/chat_icon.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List 3'),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index])),
                title: Text('first titlee')
              ),
          );
        },
        itemCount: images.length,
          padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
        )
    );
  }
}