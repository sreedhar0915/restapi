import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/model/productscreen_model.dart';

class ProductscreenController with ChangeNotifier {
  Productscreenmodel? product;
  bool isloading = false;

  getproductDetail(int productId) async {
    isloading = true;
    notifyListeners();
    final url = Uri.parse("https://api.restful-api.dev/objects/$productId");

    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        product = Productscreenmodel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      print(e);
    }
    isloading = false;
    notifyListeners();
  }
}
