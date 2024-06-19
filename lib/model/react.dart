import 'package:ilabtest/model/user.dart';

class React {
  final User? user;

  React({this.user});

  factory React.fromJson(Map<String, dynamic> json) {
    return React(
      user: User.fromJson(json['user']),
    );
  }
}
