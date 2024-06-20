import 'package:flutter/material.dart';
import 'package:ilabtest/model/post.dart';
import 'package:ilabtest/model/repository/post_repository.dart';
import 'package:ilabtest/model/repository/profile_repository.dart';
import 'package:ilabtest/model/user.dart';

class ProfileViewModel with ChangeNotifier {
  User profile = User(profileImage: "");
  List<Post> userPosts = [];

  void getUserProfile() async {
    profile = ProfileRepository().getProfile();
    notifyListeners();
  }

  void getUserPost(String id) async {
    userPosts = PostRepository().getUserPost(id);
    notifyListeners();
  }
}
