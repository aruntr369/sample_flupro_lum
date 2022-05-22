import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flupro/stateMagProvider/page2.dart';
import 'package:sample_flupro/stateMagProvider/provider/providerDemo.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('page 1 rebuild');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.yellow.shade600),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
              ),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Page2(),
              )),
              child: Text(
                'page1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Consumer<ProviderDemo>(
                builder: (BuildContext context, value, Widget? child) {
                  print('consumer rebuild');
                  return Text(value.test1);
                  //return Text(Provider.of<ProviderDemo>(context).test1);
                }),
            ElevatedButton(
              onPressed: () {
                Provider.of<ProviderDemo>(context,listen: false).changeValue("code.,.,");
              },
              child: Text("Change value"),
            ),
            Provider.of<ProviderDemo>(context).widgetFun(),
            Provider.of<ProviderDemo>(context).widgetFun(),
          ],
        ),
      ),
    );
  }
}
