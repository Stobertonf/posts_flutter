import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'author.dart';

class Post {
  final String title;
  final List<String> tags;
  final String readTime;
  final String photoUrl;
  final bool hasReadLater;
  final Author author;
  Post({
    required this.title,
    required this.tags,
    required this.readTime,
    required this.photoUrl,
    required this.hasReadLater,
    required this.author,
  });

  Post copyWith({
    String? title,
    List<String>? tags,
    String? readTime,
    String? photoUrl,
    bool? hasReadLater,
    Author? author,
  }) {
    return Post(
      title: title ?? this.title,
      tags: tags ?? this.tags,
      readTime: readTime ?? this.readTime,
      photoUrl: photoUrl ?? this.photoUrl,
      hasReadLater: hasReadLater ?? this.hasReadLater,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'tags': tags,
      'readTime': readTime,
      'photoUrl': photoUrl,
      'hasReadLater': hasReadLater,
      'author': author.toMap(),
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      title: map['title'] as String,
      tags: List<String>.from((map['tags'] as List<String>)),
      readTime: map['readTime'] as String,
      photoUrl: map['photoUrl'] as String,
      hasReadLater: map['hasReadLater'] as bool,
      author: Author.fromMap(map['author'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(title: $title, tags: $tags, readTime: $readTime, photoUrl: $photoUrl, hasReadLater: $hasReadLater, author: $author)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        listEquals(other.tags, tags) &&
        other.readTime == readTime &&
        other.photoUrl == photoUrl &&
        other.hasReadLater == hasReadLater &&
        other.author == author;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        tags.hashCode ^
        readTime.hashCode ^
        photoUrl.hashCode ^
        hasReadLater.hashCode ^
        author.hashCode;
  }
}
