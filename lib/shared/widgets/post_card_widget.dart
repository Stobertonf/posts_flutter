import 'icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/models/post.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';
import 'package:posts_flutter/shared/widgets/tag_widget.dart';
import 'package:posts_flutter/shared/widgets/text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget.bodyMediumMedium(
                  post.title,
                  color: AppTheme.colors.neutral.shade900,
                ),
                Row(
                  children: [
                    TagWidget(
                      icon: FontAwesomeIcons.glasses,
                      label: post.readTime,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    ...post.tags
                        .map((e) => TagWidget(
                              label: e,
                            ))
                        .toList()
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      post.photoUrl,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        bottom: 8,
                        right: 8,
                        child: IconButtonWidget.circle(
                          icon: post.hasReadLater
                              ? FontAwesomeIcons.solidBookmark
                              : FontAwesomeIcons.bookmark,
                          onPressed: () {},
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundImage: NetworkImage(post.author.profileUrl),
                ),
                const SizedBox(
                  width: 8,
                ),
                TextWidget.bodyMediumRegular(
                  post.author.name,
                  color: AppTheme.colors.neutral.shade900,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Divider(
              color: AppTheme.colors.neutral.shade300,
            )
          ],
        ),
      ),
    );
  }
}
