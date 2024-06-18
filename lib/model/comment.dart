import 'package:ilabtest/model/user.dart';

class Comment {
  final String? id;
  final Comment? comment;
  final User? user;

  Comment({required this.id, required this.comment, required this.user});

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      comment: json['comment'],
      user: json['user'],
    );
  }
}
