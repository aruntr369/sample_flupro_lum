import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier{
  String test1 = "CodeExxsss";

  void changeValue(String val){
    test1 = val;
    notifyListeners();
  }

  Widget widgetFun(){
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle
      ),
    );
  }

}