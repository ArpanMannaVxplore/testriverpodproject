import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(child: TextButton(onPressed: (){},child: Text("Go Home",style: TextStyle(color: Colors.black),)),),
    ));
  }
}
