import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';
import 'package:posts_flutter/shared/models/user_model.dart';
import 'package:posts_flutter/shared/widgets/text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:posts_flutter/shared/widgets/icon_button_widget.dart';

class AppBarProfileWidget extends StatelessWidget {
  final User user;
  final VoidCallback onAddUser;
  const AppBarProfileWidget({
    Key? key,
    required this.user,
    required this.onAddUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage("https://picsum.photos/1920/1080"),
                  fit: BoxFit.cover),
              color: AppTheme.colors.azul1,
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(54))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWidget.circleSmall(
                    icon: FontAwesomeIcons.arrowLeft,
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
        if (user.name != null && user.createdAt != null)
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppTheme.colors.azul1,
                      backgroundImage: user.profileUrl != null
                          ? NetworkImage(user.profileUrl)
                          : null,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget.bodyMediumRegular(user.name),
                        const SizedBox(
                          height: 4,
                        ),
                        TextWidget.bodyExtraSmallRegular(user.createdAt),
                      ],
                    ),
                  ],
                ),
                IconButtonWidget.circleExtraLarge(
                  onPressed: onAddUser,
                  icon: FontAwesomeIcons.userPlus,
                ),
              ],
            ),
          ),
        const SizedBox(
          height: 8,
        ),
        Divider(
          color: AppTheme.colors.azul1,
        )
      ],
    );
  }
}
