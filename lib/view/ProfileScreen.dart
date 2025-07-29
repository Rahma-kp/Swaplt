import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),
      ),
      body: Column(children: [
        Container(height: 100,width: 100,color: Colors.white38,)
      ],),
    );
  }
}