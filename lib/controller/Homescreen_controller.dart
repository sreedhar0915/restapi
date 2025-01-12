import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/model/homescreen_model.dart';

class HomescreenController with ChangeNotifier {
  List<Homescreenmodel> productlist = [];
  bool isloading = false;

  Future<void> getproduct() async {
    isloading = true;
    notifyListeners();
    final url = Uri.parse("https://api.restful-api.dev/objects");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        print(response.body);
        var resobj = homescreenmodelFromJson(response.body);
        productlist = resobj;
        print(productlist);
      }
    } catch (e) {
      print(e);
    }
    isloading = false;
    notifyListeners();
  }
}
