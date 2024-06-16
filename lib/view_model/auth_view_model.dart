import 'package:flutter/material.dart';

class AuthViewModel with ChangeNotifier {
  Future<void> login(String email, String password) async {
    notifyListeners();
  }
}
