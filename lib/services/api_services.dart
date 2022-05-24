import 'dart:convert';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:tab/main.dart';
import 'package:tab/model/model.dart';
import 'package:http/http.dart' as http;


class Api{
  final url = 'https://tab-hub.herokuapp.com/';
  Future<List<Model>> getModel() async {
    final posts = Hive.box(ApiBox).get('posts', defaultValue: []);
    if (posts.isNotEmpty) {
      List go = posts;
      return go.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox).put("posts", json);
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
    final masters = Hive.box(ApiBox2).get('masters', defaultValue: []);
    if (masters.isNotEmpty) {
      List ma = masters;
      return ma.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox2).put("masters", json);
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
    final undergrad = Hive.box(ApiBox3).get('undergrad', defaultValue: []);
    if (undergrad.isNotEmpty) {
      List un = undergrad;
      return un.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox3).put("undergrad", json);
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
    final phd = Hive.box(ApiBox4).get('phd', defaultValue: []);
    if (phd.isNotEmpty) {
      List ph = phd;
      return ph.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox4).put("phd", json);
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
    final college = Hive.box(ApiBox5).get('college', defaultValue: []);
    if (college.isNotEmpty) {
      List co = college;
      return co.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox5).put("college", json);
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
    final developing = Hive.box(ApiBox6).get('developing', defaultValue: []);
    if (developing.isNotEmpty) {
      List de = developing;
      return de.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox6).put("developing", json);
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
    final women = Hive.box(ApiBox7).get('women', defaultValue: []);
    if (women.isNotEmpty) {
      List wo = women;
      return wo.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox7).put("women", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}

