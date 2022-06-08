import 'package:flutter/material.dart';

class Model with ChangeNotifier{
  String title;
  String url;
  String image;
  String deadline;
  String desc;

  // constructor
  Model({
    required this.title,
    required this.url,
    required this.image,
    required this.deadline,
    required this.desc,

  });

  // function that will map parsedJson into list

  factory Model.fromJson(Map<String, dynamic> parsedJson) {
    return Model (
      // name: parsedJson['name'] as String,
      title: parsedJson['title'] ,
      url: parsedJson['url'],
      image: parsedJson['image'],
      deadline: parsedJson['deadline'],
      desc: parsedJson['desc'],
    );
  }

}





