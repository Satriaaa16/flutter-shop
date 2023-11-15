import 'package:flutter/material.dart';
import 'shopping_list.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman daftar belanjaan setelah login berhasil
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ShoppingListPage()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
