// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:tab/model/model.dart';
import 'package:url_launcher/url_launcher.dart';


class DetailsPage extends StatelessWidget {
  final Model model;
  
  DetailsPage({Key? key, required this.model}) : super(key: key);
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
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
                      image: NetworkImage(model.image),
                      fit: BoxFit.contain
                    ),
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                ),
              ),
      
              const SizedBox(height: 10.0,),

              // ignore: avoid_unnecessary_containers
              Container(
                child: const Text(
                  "Scholarship Information",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5.0,),
              const Divider(thickness: 2.0),
              Card(
                elevation: 4,
                child: Column(
                  
                  children: [
                    const SizedBox(height: 10.0), 
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
                        model.title,
                        style: const TextStyle(
                          fontSize: 15,
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
              ),

              SizedBox(height: 30.0,),

              Card(
                elevation: 4,
                child: Column(
                  
                  children: [
                    const SizedBox(height: 10.0), 
                    Container(
                      child: const Text(
                        "Scholarship Description",
                        style: TextStyle(
                          fontSize: 16.0,
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
                        model.desc,
                        style: const TextStyle(
                          fontSize: 15,
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
              ),

              const SizedBox(height: 20.0),

              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 20.0),
                  width: double.infinity,
                  child: Text(
                    model.deadline,
                    style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),
      
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: const Color(0xFF262AAA),
                ),
                onPressed: () {
                print('true');
                  _launchURL(model.url);
                },
                child: const Text(
                  "Link",
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
              ),

              const SizedBox(height: 20.0),      
            ],
          ),
        ),
      ),
    );
  }
}