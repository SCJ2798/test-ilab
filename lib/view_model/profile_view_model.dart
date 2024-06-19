import 'package:flutter/material.dart';
import 'package:ilabtest/model/repository/profile_repository.dart';
import 'package:ilabtest/model/user.dart';

class ProfileViewModel with ChangeNotifier {
  User profile = User(profileImage: "");

  void getUserProfile() async {
    profile = ProfileRepository().getProfile();
    notifyListeners();
  }
}
