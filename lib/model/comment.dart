import 'package:ilabtest/model/user.dart';

class Comment {
  final String? about;
  final User user;

  Comment({this.about, required this.user});

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      about: json['about'],
      user: User.fromJson(json['user']),
    );
  }
}
