import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flupro/stateMagProvider/page3.dart';
import 'package:sample_flupro/stateMagProvider/provider/providerDemo.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.blue.shade600),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page3(),
                )),
                child: Text('page2',
                  style: TextStyle(color: Colors.white),
                )),
            Text(Provider.of<ProviderDemo>(context).test1),
            Provider.of<ProviderDemo>(context).widgetFun(),


          ],
        ),
      ),
    );
  }
}
