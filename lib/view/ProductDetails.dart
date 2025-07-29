import 'package:flutter/material.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(210, 208, 205, 205),
            ),
          ),
        ],
      ),
    );
  }
}
