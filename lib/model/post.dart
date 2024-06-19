import 'package:ilabtest/model/comment.dart';
import 'package:ilabtest/model/react.dart';
import 'package:ilabtest/model/user.dart';

class Post {
  final String postImage;
  final String description;
  final User user;
  List<Comment> comments = [];
  List<React>? reacts;

  Post(
      {required this.user,
      required this.description,
      required this.postImage,
      required this.comments,
      this.reacts});

  factory Post.fromJson(Map<String, dynamic> json) {
    List<dynamic> cmts = json['comments'] ?? [];
    List reacts = json['reacts'] ?? [];

    return Post(
      user: User.fromJson(json['user']),
      description: json['description'],
      postImage: json['post_image'],
      comments: cmts.map((t) => Comment.fromJson(t)).toList(),
      reacts: reacts.map((t) => React.fromJson(t)).toList(),
    );
  }
}
