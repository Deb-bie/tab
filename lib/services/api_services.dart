import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:tab/main.dart';
import 'package:tab/model/model.dart';
import 'package:http/http.dart' as http;



class Api{
  final url = 'https://tab-hub.herokuapp.com/';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}


class MastersApi{
  final url = 'https://tab-hub.herokuapp.com/master';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}


class UndergradApi{
  final url = 'https://tab-hub.herokuapp.com/undergrad';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}


class PhdApi{
  final url = 'https://tab-hub.herokuapp.com/phd';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}

class CollegeApi{
  final url = 'https://tab-hub.herokuapp.com/college';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}


class WomenApi{
  final url = 'https://tab-hub.herokuapp.com/women';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}



class DevelopingApi{
  final url = 'https://tab-hub.herokuapp.com/developing';

  Future<List<Model>> getModel() async {
    Response res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}
