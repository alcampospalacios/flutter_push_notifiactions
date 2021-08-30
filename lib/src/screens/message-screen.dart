import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

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
            'message screen',
            style: TextStyle(fontSize: 30, color: Colors.black38),
          ),
        ),
      ),
    );
  }
}
