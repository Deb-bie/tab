import 'package:flutter/material.dart';

class FavModel with ChangeNotifier{
  String title;
  String url;
  String image;
  String deadline;
  String desc;

  // constructor
  FavModel({
    required this.title,
    required this.url,
    required this.image,
    required this.deadline,
    required this.desc,

  });
}





