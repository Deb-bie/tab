// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Category extends StatelessWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262AAA),
        title: Text("Category"),
        centerTitle: true,
      ),
      
      body: Container(
        child: Center(
          child: Text("Category"),
        ),
      ),
    );
  }
}






