import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';
import 'package:posts_flutter/shared/models/user_model.dart';
import 'package:posts_flutter/shared/widgets/text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_button_widget.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppTheme.colors.azul1,
                  backgroundImage: user.profileUrl != null
                      ? NetworkImage(user.profileUrl)
                      : null,
                ),
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
          IconButtonWidget.circleSmall(
              icon: FontAwesomeIcons.trash, onPressed: () {})
        ],
      ),
    );
  }
}
