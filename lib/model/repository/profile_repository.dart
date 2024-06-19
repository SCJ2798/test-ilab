import 'package:ilabtest/model/data/data.dart';
import 'package:ilabtest/model/highlight.dart';
import 'package:ilabtest/model/post.dart';
import 'package:ilabtest/model/user.dart';

class ProfileRepository {
  User getProfile() {
    return User.fromJson(data["profile"]);
  }

  List<Highlight> getHighlights() {
    List<dynamic> highlights = data["highlights"];
    return highlights.map((t) => Highlight.fromJson(t)).toList();
  }
}
