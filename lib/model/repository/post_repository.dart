import 'package:ilabtest/model/data/data.dart';
import 'package:ilabtest/model/highlight.dart';
import 'package:ilabtest/model/post.dart';

class PostRepository {
  List<Post> getPosts() {
    List<dynamic> posts = data["posts"];
    return posts.map((t) => Post.fromJson(t)).toList();
  }

  List<Highlight> getHighlights() {
    List<dynamic> highlights = data["highlights"];
    return highlights.map((t) => Highlight.fromJson(t)).toList();
  }

  List<Post> getUserPost(String id) {
    List<dynamic> posts = data["posts"];
    final userposts = posts.map((t) => Post.fromJson(t)).toList();
    return userposts.where((e) => e.user.userId == id).toList();
  }
}
