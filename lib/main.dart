import 'package:dermacare/home_screen.dart';
import 'package:dermacare/widgets/bottombar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottombar(),
    );
  }
}