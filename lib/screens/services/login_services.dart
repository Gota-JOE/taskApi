import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:taskapi/screens/model/MainModel.dart';

import '../home/home.dart';

class LoginServices {
  final url = 'https://dummyjson.com/auth/login';

   login(BuildContext context, String userName, String pass) async {
    try {
      final headers = {'Content-Type': 'application/json'};
      final body = {
        // 'username': usernameController.text,
        'username': userName, //kminchelle
        'password': pass, //0lelplR
        // 'password': passwordController.text,
      };
      final res = await http.post(Uri.parse(url),
          headers: headers, body: jsonEncode(body));

      if (res.statusCode == 200) {
        Get.off(Home());
      } else {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Login  Error',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text('${res.body}'),
                    SizedBox(
                      height: 16.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'),
                    )
                  ],
                ),
              );
            });
      }
    } catch (e) {}
    ;
  }
}
