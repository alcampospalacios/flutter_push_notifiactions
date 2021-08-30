import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Notifications'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text(
            'home screen',
            style: TextStyle(fontSize: 30, color: Colors.black38),
          ),
        ),
      ),
    );
  }
}
