import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<Map> detailsChat = [
        {
          "name": "Kddd dddd",
          "message": "Good Mor",
          "photo":
              "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
          "day": "Today",
        },
        {
          "name": "Lsss Adwww",
          "message": "Good Noon",
          "photo":
              "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
          "day": "YesterDay"
        },
        {
          "name": "Lifff Jddww",
          "message": "Haiii",
          "photo":
              "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
          "day": "Monday"
        },
        {
          "name": "Lmmm Ohhhh",
          "message": "Good Night",
          "photo":
              "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
          "day": "SunDay"
        },
        {
          "name": "Phhjj Wdff",
          "message": "Hello",
          "photo":
              "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
          "day": "Today"
        },
        {
          "name": "Ossss Wgggg",
          "message": "HRU ?",
          "photo":
              "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
          "day": "Today"
        },
        {
          "name": "Paaaa Qjjj",
          "message": "lololo",
          "photo":
              "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
          "day": "Today"
        },
  ];
  List<String> images = [
    "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
    "https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg?quality=85&w=800",
    "https://unsplash.com/photos/mEZ3PoFGs_k/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjUyNjMxNDA2&force=true&w=640",
    "https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjUyNjMzOTEz&force=true&w=640",
    "https://images.ctfassets.net/hrltx12pl8hq/2fBQ2ReliSGPkXt2ohYcpi/1958e636f2057d577480e1fa0094e3c2/people-shutterstock_316507238.jpg",
    "https://api.time.com/wp-content/uploads/2017/12/joey-degrandis-hsam-memory.jpg?quality=85&w=800",
    "https://unsplash.com/photos/mEZ3PoFGs_k/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjUyNjMxNDA2&force=true&w=640",
    "https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjUyNjMzOTEz&force=true&w=640",
  ];
  List<String> names = ["aaa seeee","ddd errtt","sss rrtt","tttyyyyy","aaa seeee","ddd errtt","sss rrtt","tttyyyyy"];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 66,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              'Conversations',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            actions: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.pink,
                    size: 25,
                  ),
                  label: Text(
                    'Add New',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink.shade50),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                      left: 10,
                      right: 10,
                    )),
                  ),
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20),
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      title: Text(names[index]),
                      subtitle: Text('sssss'),
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black45,
                        backgroundImage: NetworkImage(images[index]),
                      ),
                      trailing: Text('eeee'),
                    );
                  },
                itemCount: images.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
