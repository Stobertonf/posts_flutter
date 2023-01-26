import 'dart:convert';

class Author {
  final String id;
  final String name;
  final String profileUrl;
  Author({
    required this.id,
    required this.name,
    required this.profileUrl,
  });

  Author copyWith({
    String? id,
    String? name,
    String? profileUrl,
  }) {
    return Author(
      id: id ?? this.id,
      name: name ?? this.name,
      profileUrl: profileUrl ?? this.profileUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'profileUrl': profileUrl,
    };
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      id: map['id'] as String,
      name: map['name'] as String,
      profileUrl: map['profileUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) =>
      Author.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Author(id: $id, name: $name, profileUrl: $profileUrl)';

  @override
  bool operator ==(covariant Author other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.profileUrl == profileUrl;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ profileUrl.hashCode;
}
