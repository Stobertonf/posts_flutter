import 'dart:convert';

class User {
  final String id;
  final String name;
  final String profileUrl;
  final String createdAt;
  final String email;
  final String bio;
  User({
    required this.id,
    required this.name,
    required this.profileUrl,
    required this.createdAt,
    required this.email,
    required this.bio,
  });

  User copyWith({
    String? id,
    String? name,
    String? profileUrl,
    String? createdAt,
    String? email,
    String? bio,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      profileUrl: profileUrl ?? this.profileUrl,
      createdAt: createdAt ?? this.createdAt,
      email: email ?? this.email,
      bio: bio ?? this.bio,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'profileUrl': profileUrl,
      'createdAt': createdAt,
      'email': email,
      'bio': bio,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'].toString(),
      name: map['name'] as String,
      profileUrl: map['profileUrl'] as String,
      createdAt: map['createdAt'] as String,
      email: map['email'] as String,
      bio: map['bio'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, name: $name, profileUrl: $profileUrl, createdAt: $createdAt, email: $email, bio: $bio)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.profileUrl == profileUrl &&
        other.createdAt == createdAt &&
        other.email == email &&
        other.bio == bio;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        profileUrl.hashCode ^
        createdAt.hashCode ^
        email.hashCode ^
        bio.hashCode;
  }
}
