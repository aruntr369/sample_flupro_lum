import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flupro/stateMagProvider/page1.dart';
import 'package:sample_flupro/stateMagProvider/provider/providerDemo.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

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
                  MaterialStateProperty.all(Colors.red.shade600),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page1(),
                )),
                child: Text('page3',
                  style: TextStyle(color: Colors.white),
                )),
            Text(Provider.of<ProviderDemo>(context).test1)

          ],
        ),
      ),
    );
  }
}
