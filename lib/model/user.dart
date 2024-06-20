class User {
  final String? firstName;
  final String? lastName;
  final String? position;
  final String? title;
  final String? profileImage;
  final String? password;
  final String? email;
  final String? userId;
  final String? coverImage;
  final String? about;
  final String? tags;
  final String? location;
  final String? followers;
  final String? connections;

  User(
      {this.firstName,
      this.lastName,
      this.userId,
      this.title,
      this.password,
      this.email,
      this.position,
      this.profileImage,
      this.coverImage,
      this.location,
      this.followers,
      this.connections,
      this.tags,
      this.about});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        userId: json['user_id'] as String?,
        password: json['password'] as String?,
        title: json['title'] as String?,
        position: json['position'] as String?,
        profileImage: json['profile_image'] as String?,
        email: json['email'] as String?,
        about: json['about'] as String?,
        location: json['location'] as String?,
        tags: json['tags'] as String?,
        followers: json['followers'] as String?,
        connections: json['connections'] as String?,
        coverImage: json['cover_image'] as String?);
  }
}
