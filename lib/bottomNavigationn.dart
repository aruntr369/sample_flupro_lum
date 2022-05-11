import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red
    ),
    home: ButtomNav(),
  ));
}

class ButtomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ButtomNavState();
}


class _ButtomNavState extends State {
  List<Widget> datas = [
    Text('index 0 : Home'),
    Text('index 1 : Copy'),
    Text('index 2 : Past'),
    Text('index 3 : Cut'),
    Text('index 4 : Delete'),
  ];

  int selesctedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      body: Center(
        child: IndexedStack(
          index: selesctedindex,
          children: datas,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.yellow,
        currentIndex: selesctedindex,
        onTap: selectedfromDatas,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.holiday_village),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.copy), label: "copy"),
        BottomNavigationBarItem(icon: Icon(Icons.paste),label: "Paste"),
        BottomNavigationBarItem(icon: Icon(Icons.cut),label: 'Cut'),
        BottomNavigationBarItem(icon: Icon(Icons.delete),label: 'Delete'),

      ],
      ),

    );
  }

  void selectedfromDatas(int index) {
    setState(() {
    selesctedindex = index;

    });
}}