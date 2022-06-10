// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tab/screens/categories/australia.dart';
import 'package:tab/screens/categories/canada.dart';
import 'package:tab/screens/categories/college.dart';
import 'package:tab/screens/categories/contests.dart';
import 'package:tab/screens/categories/developing.dart';
import 'package:tab/screens/categories/entre.dart';
import 'package:tab/screens/categories/fellow.dart';
import 'package:tab/screens/categories/germany.dart';
import 'package:tab/screens/categories/intern.dart';
import 'package:tab/screens/categories/ireland.dart';
import 'package:tab/screens/categories/japan.dart';
import 'package:tab/screens/categories/masters.dart';
import 'package:tab/screens/categories/nether.dart';
import 'package:tab/screens/categories/phd.dart';
import 'package:tab/screens/categories/south.dart';
import 'package:tab/screens/categories/uk.dart';
import 'package:tab/screens/categories/undergrad.dart';
import 'package:tab/screens/categories/usa.dart';
import 'package:tab/screens/categories/women.dart';
import 'package:tab/screens/categories/zealand.dart';


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

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> UK()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "UK Schorlarships",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> USA()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "USA Scholarships",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Canada()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Canadian Scholarships",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Australia()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Australia",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Contests()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Contests",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Entrepreneurship()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Entrepreneurs",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Fellowships()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Fellowships",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Germany()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "German Scholarships",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Internships()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Internships",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Ireland()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Ireland",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Japan()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Japan",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Netherlands()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "Netherlands",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> South()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "South Africa",
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Zealand()));
            },
            child: Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: Container(
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    "New Zealand",
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

