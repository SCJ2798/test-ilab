import 'dart:developer';

import 'package:flutter/material.dart';

class AuthViewModel with ChangeNotifier {
  Future<void> login(String email, String password) async {
    log('${[email, password]}');
    notifyListeners();
    throw Exception("AA");
    // return false;
  }

  Future<void> register(
      String firstName, String lastName, String email, String password) async {
    log('${[email, password]}');
    notifyListeners();
    throw Exception("AA");
    // return false;
  }
}
