// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab/components/tile.dart';
import 'package:tab/model/model.dart';
import 'package:tab/services/api_services.dart';


class Masters extends StatefulWidget {
  const Masters({ Key? key }) : super(key: key);

  @override
  State<Masters> createState() => _MastersState();
}

class _MastersState extends State<Masters> {

  MastersApi client = MastersApi();

  @override
  // ignore: use_function_type_syntax_for_parameters

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262AAA),
        title: const Text("Masters Scholarships"),
        centerTitle: true,
      ),

      body: Container(
          child: FutureBuilder(
            key: UniqueKey(),
            future: client.getModel(),
            builder: (BuildContext context, AsyncSnapshot<List<Model>> snapshot) {
            if (snapshot.hasData){
              List<Model>? models = snapshot.data;
              return ListView.builder(
                itemCount: models!.length,
                itemBuilder: (BuildContext context, index) { 
                 return tile( models[index], context ); 
                }
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
