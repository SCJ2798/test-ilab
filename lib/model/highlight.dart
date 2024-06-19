class Highlight {
  final String userProfile;
  final String? highlight;

  Highlight({required this.userProfile, this.highlight});

  factory Highlight.fromJson(Map<String, dynamic> json) {
    return Highlight(
        userProfile: json['user_profile'], highlight: json['highlight']);
  }
}
