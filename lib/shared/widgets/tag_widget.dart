import 'text_widget.dart';
import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';

class TagWidget extends StatelessWidget {
  final IconData? icon;
  final String label;
  const TagWidget({
    Key? key,
    this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: AppTheme.colors.azul2,
        avatar: icon != null
            ? Icon(
                icon,
                size: 15,
                color: AppTheme.colors.branco,
              )
            : null,
        label: TextWidget.bodyExtraSmallRegular(
          label,
          color: AppTheme.colors.branco,
        ));
  }
}
