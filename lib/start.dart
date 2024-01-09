import 'package:flutter/material.dart';

class startsocialmedia extends StatelessWidget {
  const startsocialmedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          
        }, child: Text('start social media')),
      ),
    );
  }
}