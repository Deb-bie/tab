// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab/components/tile.dart';
import 'package:tab/model/model.dart';
import 'package:tab/services/api_services.dart';


class Internships extends StatefulWidget {
  const Internships({ Key? key }) : super(key: key);

  @override
  State<Internships> createState() => _InternshipsState();
}

class _InternshipsState extends State<Internships> {

  InternshipApi client = InternshipApi();


  @override
  // ignore: use_function_type_syntax_for_parameters

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Internships"),
        centerTitle: true,
      ),

      body: Container(
        child: FutureBuilder(
          key: UniqueKey(),
          future: client.getModel(),
          builder: (BuildContext context, AsyncSnapshot<List<Model>> snapshot) {
            if (snapshot.hasData){
              List<Model>? models = snapshot.data;
              
              return Scrollbar(
                // thumbVisibility: true,
                thickness: 8.0,
                interactive: true,
                radius: Radius.circular(20),
                child: ListView.builder(
                  itemCount: models!.length,
                  itemBuilder: (BuildContext context, index) { 
                  return tile( models[index],  context); 
                  }
                ),
              );
            }

            return const Center(
              child: CupertinoActivityIndicator(radius: 20,)
            );
          }
        ), 
      ),
    );
  }
}