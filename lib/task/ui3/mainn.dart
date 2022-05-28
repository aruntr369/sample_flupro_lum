import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentSelectedIndex = 0;

  final _page = [
    ScreenMain(),
    SearchResult(),
    SignUp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  GNav(
            gap: 8,
            tabMargin: EdgeInsets.all(16),
            onTabChange: (index){
              setState(() {
              _currentSelectedIndex = index;

              });
            },
            backgroundColor: Colors.lightGreenAccent,
            color: Colors.white,
            activeColor: Colors.lightGreenAccent,
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.all(11),
            tabs: [
              GButton(
                icon: Icons.gamepad_sharp,
                text: 'home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.account_box,
              ),
            ],
          ),


      // BottomNavigationBar( type: BottomNavigationBarType.fixed,
      // backgroundColor: Colors.lightGreenAccent,
      // selectedItemColor: Colors.white,
      // unselectedItemColor: Colors.green,
      //   currentIndex: _currentSelectedIndex,
      //   onTap: (i){
      //   setState(() {
      //     _currentSelectedIndex = i;
      //   });
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.holiday_village,),label: "home",),
      //     BottomNavigationBarItem(icon: Icon(Icons.copy), label: "copy"),
      //     BottomNavigationBarItem(icon: Icon(Icons.paste),label: "Paste"),
      //     BottomNavigationBarItem(icon: Icon(Icons.cut),label: 'Cut'),
      //     BottomNavigationBarItem(icon: Icon(Icons.delete),label: 'Delete'),
      //
      //   ],
      // )
      body: _page.elementAt(_currentSelectedIndex),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.pink[100] : Colors.white,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
              : []),
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}

class ScreenMain extends StatelessWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [Container(child: Text('1'),)]));
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          elevation: 0,
          toolbarHeight: 50,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Search Result'),
            ],
          ),

        ),

        body: Center(child: Container(child: Text('2'),)));
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          elevation: 0,
          toolbarHeight: 80,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.whatshot_sharp),
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign Up'),
            ],
          ),

        ),
        body: Center(child: Container(child: Text('3'),)));
  }
}
