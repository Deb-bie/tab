// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, dead_code, prefer_const_constructors
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tab/main.dart';
import 'package:tab/model/model.dart';
import 'package:tab/screens/home.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/tile.dart';


class DetailsPage extends StatefulWidget {

  final Model model;
  // bool isFav= false;

  // ignore: non_constant_identifier_names
  

  DetailsPage({Key? key, required this.model}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isFav = true;
  late final Model model;
  // late final List<Model> models = [];


   _launchURL(url) async {
    // var urls = article.url;
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        enableJavaScript: true
      );
      return ;
    } else {
    throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context,) {
    var screenSize = MediaQuery.maybeOf(context)!.size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model.title),
        backgroundColor: const Color(0xFF262AAA),
      ),

      body: SingleChildScrollView      (
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 6,
                margin: const EdgeInsets.all(12.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.model.image),
                      fit: BoxFit.contain
                    ),
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                ),
              ),
      
              const SizedBox(height: 10.0,),

              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Center(
                        child: Text(
                          "Scholarship Information",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              
              const SizedBox(height: 15.0,),
              const Divider(thickness: 2.0),
              // Card(
                // elevation: 4,
                // child: 
                Column(
                  
                  children: [
                    const SizedBox(height: 20.0), 
                    Container(
                      child: const Text(
                        "Scholarship Name",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10.0,),

                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        widget.model.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400 ,
                          color: Colors.blueGrey,
                          wordSpacing: 2.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),                 
              // ),

              const SizedBox(height: 30.0,),

              // Card(
                // elevation: 4,
                // child: 
                Column(
                  
                  children: [
                    const SizedBox(height: 10.0), 
                    Container(
                      child: const Text(
                        "Scholarship Description",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 5.0,),

                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        widget.model.desc,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400 ,
                          color: Colors.blueGrey,
                          wordSpacing: 2.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20.0),
                  ],
                ),  
              // ),

              const SizedBox(height: 20.0),

              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  width: double.infinity,
                  child: Text(
                    widget.model.deadline,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
      
              SizedBox(
                height: 60,
                width: 150,
                
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF262AAA),
                    shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(10)
                  ),
                  ),
                  onPressed: () {
                  _launchURL(widget.model.url);
                  },
                  child: const Text(
                    "Link",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 100.0),      
            ],
          ),
        ),
      ),
    );
  }
}