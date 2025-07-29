import 'package:flutter/material.dart';
import 'package:swaplt/view/BottomBar.dart';
import 'package:swaplt/view/HomeScreen.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:BottomBarScreen(),);
  }
}