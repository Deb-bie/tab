// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tab/screens/categories/college.dart';
import 'package:tab/screens/categories/developing.dart';
import 'package:tab/screens/categories/masters.dart';
import 'package:tab/screens/categories/phd.dart';
import 'package:tab/screens/categories/undergrad.dart';
import 'package:tab/screens/categories/women.dart';


class Category extends StatelessWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262AAA),
        title: Text("Categories"),
        centerTitle: true,
        
      ),

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 2,
        children: [

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Undergrad()));
            },
            child: Card(
                elevation: 8,
              shadowColor: Colors.pink,
                child: Container(
                  color: Colors.pink,
                  child: Center(
                    child: Text(
                      "Undergraduate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,                      
                      ),
                    ),
                  ),
                ),
              ),
            ),
          


          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Masters()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.purple,
              child: Container(
                color: Colors.purple,
                child: Center(
                  child: Text(
                    "Masters",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,                      
                    ),
                  ),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Phd()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.green,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    "Phd",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,                      
                    ),
                  ),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> College()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.orange,
              child: Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "College",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,                      
                    ),
                  ),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Developing()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Developing Countries",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,                      
                    ),
                  ),
                ),
              ),
            ),
          ),

          
          
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Women()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.teal,
              child: Container(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    "Women",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,                      
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

