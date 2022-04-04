// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),

      ),
      
      body: Container(
        child: Center(
          child: Text("About"),
        ),
      ),
    );
  }
}






 