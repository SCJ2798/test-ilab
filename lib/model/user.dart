class User {
  final String? firstName;
  final String? lastName;
  final String? position;
  final String? title;
  final String? profileImage;
  final String? password;
  final String? email;
  final String? coverImage;

  User(
      {this.firstName,
      this.lastName,
      this.title,
      this.password,
      this.email,
      this.position,
      this.profileImage,
      this.coverImage});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        password: json['password'] as String?,
        title: json['title'] as String?,
        position: json['position'] as String?,
        profileImage: json['profile_image'] as String?,
        email: json['email'] as String?,
        coverImage: json['cover_image'] as String?);
  }
}
