import 'package:ilabtest/model/comment.dart';
import 'package:ilabtest/model/user.dart';

class Post {
  final String? caption;
  final String? imageUrl;
  final User? user;
  List<Comment>? comments = [];

  Post({
    required this.user,
    required this.caption,
    required this.imageUrl,
    this.comments,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        user: User.fromJson(json['user']),
        caption: json['caption'],
        imageUrl: json['image_url'],
        comments: json['comment']);
  }
}
