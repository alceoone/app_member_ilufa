import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/ErrorResp.dart';
import '../Model/LoginResp.dart';

class CQAPI {
  static var client = http.Client();
  static var _baseURL = Uri.parse("http://127.0.0.1:8000/api");

  static Future<List> refreshToken({required String token}) async {
    var response = await client
        .post('$_baseURL/auth/refresh' as Uri, headers: <String, String>{
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode == 200) {
      var json = response.body;
      //status is success but not excepted result
      if (json.contains("access_token") == false) {
        return ["", "Unknown Error"];
      }
      var loginRes = loginRespFromJson(json);
      if (loginRes != null) {
        return [loginRes.accessToken, ""];
      } else {
        return ["", "Unknown Error"];
      }
    } else {
      var json = response.body;
      var errorResp = errorRespFromJson(json);
      if (errorResp == null) {
        return ["", "Unknown Error"];
      } else {
        return ["", errorResp.error];
      }
    }
  }

  static Future<List> login(
      {required String email, required String password}) async {
    var response = await client.post(
        Uri.parse('http://127.0.0.1:8000/api/member/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:
            jsonEncode(<String, String>{"email": email, "password": password}));

    // ignore: avoid_print
    // print(response.body);

    if (response.statusCode == 200) {
      var json = response.body;
      var loginRes = loginRespFromJson(json);
      if (loginRes != null) {
        return [loginRes.accessToken, ""];
      } else {
        return ["", "Unknown Error"];
      }
    } else {
      var json = response.body;
      var errorResp = errorRespFromJson(json);
      if (errorResp == null) {
        return ["", "Unknown Error"];
      } else {
        return ["", errorResp.error];
      }
    }
  }
}
