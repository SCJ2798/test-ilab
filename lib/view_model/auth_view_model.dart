import 'dart:developer';

import 'package:flutter/material.dart';

class AuthViewModel with ChangeNotifier {
  Future<void> login(String email, String password) async {
    log('${[email, password]}');
    notifyListeners();
    // return false;
  }

  Future<void> register(
      String firstName, String lastName, String email, String password) async {
    log('${[email, password]}');
    notifyListeners();
    // return false;
  }
}
