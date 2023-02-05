import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/models/user_model.dart';
import 'package:posts_flutter/shared/widgets/app_bar/app_bar_start_widget.dart';
import 'package:posts_flutter/shared/widgets/app_bar/app_bar_profile_widget.dart';
import 'package:posts_flutter/shared/widgets/app_bar/app_bar_current_user_widget.dart';

class AppBarWidget extends PreferredSize {
  final Widget component;
  final Size size;
  const AppBarWidget._({required this.component, required this.size, Key? key})
      : super(key: key, preferredSize: size, child: component);

  factory AppBarWidget.start({Key? key}) => AppBarWidget._(
      key: key,
      size: const Size(double.maxFinite, 200),
      component: const AppBarStartWidget());

  factory AppBarWidget.profile({
    Key? key,
    required User user,
    required VoidCallback onAddUser,
  }) =>
      AppBarWidget._(
          key: key,
          size: const Size(double.maxFinite, 300),
          component: AppBarProfileWidget(
            user: user,
            onAddUser: onAddUser,
          ));

  factory AppBarWidget.currentUser({
    Key? key,
    required User user,
  }) =>
      AppBarWidget._(
          key: key,
          size: const Size(double.maxFinite, 342),
          component: AppBarCurrentUserWidget(
            user: user,
          ));
}
