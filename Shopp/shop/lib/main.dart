import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

Future<void> loginUser(String username, String password) async {
  try {
    Response response = await Dio().post(
      "http://localhost/login/login.php",
      data: {"username": username, "password": password},
    );

    Map<String, dynamic> data = json.decode(response.data);

    if (data['status'] == "success") {
      // Login berhasil
      print(data['message']);
      print(data['user']);
    } else {
      // Login gagal
      print(data['message']);
    }
  } catch (e) {
    print("Error: $e");
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginPage(),
    );
  }
}
