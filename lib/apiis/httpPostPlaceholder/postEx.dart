import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          postData();
        },),
        body: SafeArea(child: Text('data'),
          
        ),
      ),
    );
  }
}

postData() async{
  try{
  var response =await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  body: {
    "name": "Arun",
    "id": 123.toString(),
    "email": "aaa2@ssss"
  }
  );
  print(response.body);
}catch(e){
    print(e);
  }
}
