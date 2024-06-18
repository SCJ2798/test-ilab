class User {
  final String? firstName;
  final String? lastName;
  final String? userId;
  String? password;
  String? email;

  User({this.firstName, this.lastName, this.userId, this.password, this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstname'] as String?,
      lastName: json['lastname'] as String?,
      userId: json['userId'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
    );
  }
}
