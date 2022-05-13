import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginForm(),
  ));
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  RegExp nummValues = RegExp("[0-9]+");
  bool validForm = false;
  var form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Form(
          key: form,
          child: Column(
            children: [
              TextFormField(
                validator: (input) {
                  if (input!.isEmpty) {
                    return "Please fill all the field";
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (input) {
                  if (input!.isEmpty || nummValues.hasMatch(input)) {
                    return "Please fill all the field";
                  }else return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if(form.currentState!.validate()){
                    setState(() {
                      validForm = true;
                    });
                  }else{
                    setState(() {
                      validForm = false;
                    });
                  }
                },
                child: Text('Login'),
              ),
              Text(validForm? "Success": "empty field"),
            ],
          ),
        ),
      ),
    );
  }
}
