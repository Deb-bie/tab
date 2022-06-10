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



class UndergradApi{
  final url = 'https://tab-hub.herokuapp.com/master';
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
    if (developing != null) {
      List developin = developing;
      // return developin.map((job) => Model.fromJson(job)).toList();
       return developin.map((job) => Model.fromJson(job)).toList();
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


class FellowshipApi{
  final url = 'https://second-hub.herokuapp.com/fellowships';
  Future<List<Model>> getModel() async {
    final fellow = Hive.box(ApiBox8).get('fellow', defaultValue: []);
    if (fellow.isNotEmpty) {
      List fe = fellow;
      return fe.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox8).put("fellow", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}



class InternshipApi{
  final url = 'https://second-hub.herokuapp.com/internships';
  Future<List<Model>> getModel() async {
    final intern = Hive.box(ApiBox9).get('intern', defaultValue: []);
    if (intern.isNotEmpty) {
      List inte = intern;
      return inte.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox9).put("intern", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}


class ContestsApi{
  final url = 'https://second-hub.herokuapp.com/contests';
  Future<List<Model>> getModel() async {
    final contest = Hive.box(ApiBox10).get('contest', defaultValue: []);
    if (contest.isNotEmpty) {
      List co = contest;
      return co.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox10).put("contest", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class EntrepreneursApi{
  final url = 'https://second-hub.herokuapp.com/entrepreneurs';
  Future<List<Model>> getModel() async {
    final entre = Hive.box(ApiBox11).get('entre', defaultValue: []);
    if (entre.isNotEmpty) {
      List en = entre;
      return en.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox11).put("entre", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class UKApi{
  final url = 'https://second-hub.herokuapp.com/uk';
  Future<List<Model>> getModel() async {
    final uk = Hive.box(ApiBox12).get('women', defaultValue: []);
    if (uk.isNotEmpty) {
      List uks = uk;
      return uks.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox12).put("uk", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class USAApi{
  final url = 'https://second-hub.herokuapp.com/usa';
  Future<List<Model>> getModel() async {
    final us = Hive.box(ApiBox13).get('us', defaultValue: []);
    if (us.isNotEmpty) {
      List uss = us;
      return uss.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox13).put("us", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class CanadaApi{
  final url = 'https://second-hub.herokuapp.com/canada';
  Future<List<Model>> getModel() async {
    final canada = Hive.box(ApiBox14).get('canada', defaultValue: []);
    if (canada.isNotEmpty) {
      List ca = canada;
      return ca.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox14).put("canada", json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class AustraliaApi{
  final url = 'https://second-hub.herokuapp.com/australia';
  Future<List<Model>> getModel() async {
    final austra = Hive.box(ApiBox15).get('austra', defaultValue: []);
    if (austra.isNotEmpty) {
      List au = austra;
      return au.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox15).put("austra", json);
      // print(json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class JapanApi{
  final url = 'https://second-hub.herokuapp.com/japan';
  Future<List<Model>> getModel() async {
    final japan = Hive.box(ApiBox16).get('japan', defaultValue: []);
    if (japan.isNotEmpty) {
      List ja = japan;
      return ja.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox16).put("japan", json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class NetherlandsApi{
  final url = 'https://second-hub.herokuapp.com/netherlands';
  Future<List<Model>> getModel() async {
    final nether = Hive.box(ApiBox17).get('nether', defaultValue: []);
    if (nether.isNotEmpty) {
      List ne = nether;
      return ne.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox17).put("nether", json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class ZealandApi{
  final url = 'https://second-hub.herokuapp.com/new_zealand';
  Future<List<Model>> getModel() async {
    final zealand = Hive.box(ApiBox18).get('zealand', defaultValue: []);
    if (zealand.isNotEmpty) {
      List ze = zealand;
      return ze.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox18).put("zealand", json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class GermanyApi{
  final url = 'https://second-hub.herokuapp.com/germany';
  Future<List<Model>> getModel() async {
    final german = Hive.box(ApiBox19).get('german', defaultValue: []);
    if (german.isNotEmpty) {
      List ger = german;
      return ger.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox19).put("german", json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class IrelandApi{
  final url = 'https://second-hub.herokuapp.com/ireland';
  Future<List<Model>> getModel() async {
    final ireland = Hive.box(ApiBox20).get('ireland', defaultValue: []);
    if (ireland.isNotEmpty) {
      List ire = ireland;
      return ire.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox20).put("ireland", json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}




class SouthApi{
  final url = 'https://second-hub.herokuapp.com/south_africa';
  Future<List<Model>> getModel() async {
    final south = Hive.box(ApiBox21).get('south', defaultValue: []);
    if (south.isNotEmpty) {
      List sou = south;
      return sou.map((job) => Model.fromJson(job)).toList();
    }
    Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      List json = jsonDecode(res.body);
      Hive.box(ApiBox21).put("south", json);
      return json.map((job) => Model.fromJson(job)).toList();
    } else {
      throw ("Can't get the articles");
    }
  }
}



