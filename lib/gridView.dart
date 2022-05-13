import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridDemo(),
  ));
}

class GridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 3,
          mainAxisSpacing: 6,
          children: List.generate(datas.length, (index) {
            return Center(
              child: SelectedCard(datas: datas[index]),
            );
          })),
    );
  }
}

class SelectedCard extends StatelessWidget {
  MyWidget datas;

  SelectedCard({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.pink,
      color: Colors.amber,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Icon(
              datas.icon,
              size: 50,
              color: Colors.deepOrange,
            )),
            Text(
              datas.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget {
  String title;
  IconData icon;

  MyWidget({required this.title, required this.icon});
}

List datas = [
  MyWidget(title: 'Settings', icon: Icons.settings),
  MyWidget(title: 'Copy', icon: Icons.copy),
  MyWidget(title: 'Past', icon: Icons.paste),
  MyWidget(title: 'fav', icon: Icons.favorite_border),
  MyWidget(title: 'Villa', icon: Icons.holiday_village),
  MyWidget(title: 'offfline', icon: Icons.offline_bolt),
  MyWidget(title: 'qr', icon: Icons.qr_code),
  MyWidget(title: 'e mobile', icon: Icons.e_mobiledata),
  MyWidget(title: 'dangerous', icon: Icons.dangerous),
  MyWidget(title: 'add', icon: Icons.add),
  MyWidget(title: 'holiy', icon: Icons.holiday_village),
  MyWidget(title: 'offfline', icon: Icons.offline_bolt),
];
