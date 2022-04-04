// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tab/screens/about.dart';
import 'package:tab/screens/home_layout.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262AAA),
        title: const Text("Scholarship Hub"),
        centerTitle: true,
      ),

      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}