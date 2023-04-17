import 'package:flutter/cupertino.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/breed.dart';

class CatProvider extends ChangeNotifier {
  String _url = 'api.thecatapi.com';
  String _api = 'bda53789-d59e-46cd-9bc4-2936630fde39';
  List<Breed> breeds = [];

  CatProvider() {
    getJsonData();
  }
  Future<List<Breed>> getJsonData() async {
    final url =
        Uri.https('api.thecatapi.com', "v1/breeds", {'x-api-key': _api});
    final response = await http.get(url);
    final List<dynamic> data = json.decode(response.body);
    breeds = data
        .map((json) => Breed(
              name: json['name'],
              origin: json['origin'],
              intelligence: json['intelligence'],
              reference_image_id: json['reference_image_id'] == null ? "000" : json['reference_image_id']
            ))
        .toList();
    notifyListeners();
    return breeds;
    
  }
}
