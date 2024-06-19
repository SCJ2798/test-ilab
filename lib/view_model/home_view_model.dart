import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ilabtest/model/highlight.dart';
import 'package:ilabtest/model/post.dart';
import 'package:ilabtest/model/repository/post_repository.dart';

class HomeViewModel with ChangeNotifier {
  List<Post> postlist = [];
  List<Highlight> highlightList = [];

  void getPosts() async {
    postlist = PostRepository().getPosts();
    notifyListeners();
  }

  void getHightligts() async {
    highlightList = PostRepository().getHighlights();
    notifyListeners();
  }

  Future<void> register(
      String firstName, String lastName, String email, String password) async {
    log('${[email, password]}');
    notifyListeners();
    throw Exception("AA");
    // return false;
  }
}
