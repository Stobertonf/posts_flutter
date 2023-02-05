import 'package:flutter/material.dart';
import '../../shared/widgets/app_bar/app_bar_widget.dart';
import 'package:posts_flutter/shared/models/user_model.dart';
import 'package:posts_flutter/features/current_user_profile/tabs/info_tab.dart';
import 'package:posts_flutter/features/current_user_profile/tabs/saved_tab.dart';
import 'package:posts_flutter/features/current_user_profile/tabs/followers_tab.dart';

class CurrentUserProfilePage extends StatefulWidget {
  const CurrentUserProfilePage({Key? key}) : super(key: key);

  @override
  State<CurrentUserProfilePage> createState() => _CurrentUserProfilePageState();
}

class _CurrentUserProfilePageState extends State<CurrentUserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBarWidget.currentUser(
            user: User(
                id: " id",
                email: "email@email.com",
                bio: "Bio",
                name: "Lorem Ipsum",
                createdAt: "Desde Junho de 2021",
                profileUrl: "https://picsum.photos/100/100"),
          ),
          body: const TabBarView(
              children: [InfoTab(), FollowersTab(), SavedTab()])),
    );
  }
}
