import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/models/author.dart';
import 'package:posts_flutter/shared/models/post.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:posts_flutter/shared/widgets/post_card_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: AppTheme.colors.neutral.shade300,
                  borderRadius: BorderRadius.circular(200)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Buscar no app",
                    suffixStyle: AppTheme.textStyles.bodyMediumRegular,
                    icon: const Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 18,
                    )),
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: AppTheme.colors.neutral.shade50,
          bottom: TabBar(
              indicatorColor: AppTheme.colors.azul2,
              labelColor: AppTheme.colors.azul1,
              unselectedLabelColor: AppTheme.colors.preto,
              tabs: const [
                Tab(
                  text: "Para você",
                ),
                Tab(
                  text: "Novidades",
                ),
                Tab(
                  text: "Em alta",
                )
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
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
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
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
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
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
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
