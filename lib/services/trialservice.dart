import 'dart:convert';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:tab/main.dart';
import 'package:tab/model/model.dart';
import 'package:http/http.dart' as http;

// final _data = List<dynamic>.from(
//   data.map<dynamic>(
//     (dynamic item) => item,
//   ),
// );

class UndergradApi{
  final url = 'https://tab-hub.herokuapp.com/undergrad';
  Future<List> getModel() async {
    final undergrad = Hive.box(ApiBox3).get('undergrad', defaultValue: []);
    if (undergrad.isNotEmpty) {
      List un = undergrad;
      List<dynamic>.from(un.map<dynamic>((dynamic job) => Model.fromJson(job))).toList();

      return un;

      // InternalLinkedHashMap<String, dynamic> invalidMap;


      // return un.map((under) => Model.fromJson(under)).toList();
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



















