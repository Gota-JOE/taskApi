import 'dart:convert';

import 'package:taskapi/screens/model/MainModel.dart';

import 'package:http/http.dart' as http;

class MainServices {
  //String apiKey = '3062138b73f3537d2f7dad556ee542e5';
  String apiKey = 'https://dummyjson.com/products';

  Future/*<List<Products>?>*/ fetchProdects() async {
    try {
      final response = await http
          .get(Uri.parse(apiKey)); /*"https://dummyjson.com/products"*/
      if (response.statusCode == 200) {
        jsonDecode(response.body);
        final mainRes = MainModel.fromJson(jsonDecode(response.body));
        print(mainRes.products);
        return mainRes.products;
      } else {
        throw Exception('error');
      }
    } catch (e) {
      print(e);
    }
  }
}

/*class MainServices {
  //String apiKey = '3062138b73f3537d2f7dad556ee542e5';

  Future<List<Products>?> fetchProdects(int id) async {
    final response =
    await http.get(Uri.parse('https://dummyjson.com/carts/user/$id'));
    if (response.statusCode == 200)
      final jsonRes = jsonDecode(response.body);
      final mainRes = MainModel.fromJson(jsonRes);
      print(mainRes.products);
      return mainRes.products;

}}*/
