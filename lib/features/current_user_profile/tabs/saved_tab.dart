import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/models/post.dart';
import 'package:posts_flutter/shared/models/author.dart';
import 'package:posts_flutter/shared/widgets/post_card_widget.dart';

class SavedTab extends StatelessWidget {
  const SavedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              20,
              (index) => PostCard(
                  post: Post(
                      title: "Lorem Ipsum",
                      tags: ["Android"],
                      readTime: "5 min",
                      photoUrl: "https://picsum.photos/1920/1080",
                      hasReadLater: false,
                      author: Author(
                          id: "id",
                          name: "Augusto",
                          profileUrl: "https://picsum.photos/100/100"))),
            )),
      ),
    );
  }
}
