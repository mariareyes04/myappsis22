import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 70, 89),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: const Color.fromARGB(255, 215, 175, 175),
                backgroundImage: AssetImage('images/foto1.png'),
              ),
              Text('Login')
            ],
          )
        ],
      ),
    );
  }
}
