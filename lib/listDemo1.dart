import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ListViewWithCons(),
  ));
}

class ListViewWithCons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List 1'),
      ),
      body: ListView(
        children: const [
          Card(
            child: Center(
                child: Text('List of apple',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),),
            ),
          ),
          Card(
            child: Text('banana'),
          ),
          Card(
            child: Text('Donut'),
          ),
          Card(
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              tileColor: Colors.blue,
              subtitle: Text('go to settimgs'),
              trailing: Icon(Icons.ac_unit_sharp),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Settings 2'),
              leading: Icon(Icons.details),
              tileColor: Colors.blue,
              subtitle: Text('go to settimgs'),
              trailing: Icon(Icons.label),
            ),
          )
        ],
      ),
    );
  }
}