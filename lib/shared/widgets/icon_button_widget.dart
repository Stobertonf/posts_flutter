import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData? icon;
  final ImageProvider? image;
  final VoidCallback onPressed;
  final BorderRadius borderRadius;
  final Color? iconColor;
  final Color? backgroundColor;
  final Size size;
  final double? iconSize;
  const IconButtonWidget._({
    Key? key,
    this.icon,
    required this.onPressed,
    required this.borderRadius,
    this.iconColor,
    this.backgroundColor,
    this.image,
    this.iconSize,
    required this.size,
  }) : super(key: key);

  factory IconButtonWidget.circleSmall({
    Key? key,
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      IconButtonWidget._(
        key: key,
        icon: icon,
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(200),
        backgroundColor: AppTheme.colors.branco,
        iconColor: AppTheme.colors.azul2,
        size: const Size(32, 32),
        iconSize: 20,
      );

  factory IconButtonWidget.circleSmallInverted({
    Key? key,
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      IconButtonWidget._(
        key: key,
        icon: icon,
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(200),
        backgroundColor: AppTheme.colors.azul2,
        iconColor: AppTheme.colors.branco,
        size: const Size(32, 32),
        iconSize: 14,
      );

  factory IconButtonWidget.circle({
    Key? key,
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      IconButtonWidget._(
        key: key,
        icon: icon,
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(200),
        backgroundColor: AppTheme.colors.branco,
        iconColor: AppTheme.colors.azul2,
        size: const Size(40, 40),
      );

  factory IconButtonWidget.circleLarge(
          {Key? key,
          IconData? icon,
          required VoidCallback onPressed,
          ImageProvider? image}) =>
      IconButtonWidget._(
        key: key,
        icon: icon,
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(200),
        backgroundColor: AppTheme.colors.preto,
        iconColor: AppTheme.colors.azul2,
        size: const Size(50, 50),
        image: image,
      );

  factory IconButtonWidget.circleExtraLarge(
          {Key? key,
          IconData? icon,
          required VoidCallback onPressed,
          ImageProvider? image}) =>
      IconButtonWidget._(
        key: key,
        icon: icon,
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(500),
        backgroundColor: AppTheme.colors.azul2,
        iconColor: AppTheme.colors.branco,
        size: const Size(60, 60),
        image: image,
      );

  factory IconButtonWidget.rounded({
    Key? key,
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      IconButtonWidget._(
        key: key,
        icon: icon,
        onPressed: onPressed,
        borderRadius: BorderRadius.circular(16),
        iconColor: AppTheme.colors.branco,
        backgroundColor: AppTheme.colors.azul2,
        size: const Size(48, 48),
      );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Material(
        color: backgroundColor,
        borderRadius: borderRadius,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: InkWell(
            borderRadius: borderRadius,
            onTap: onPressed,
            child: Center(
                child: image != null
                    ? Image(image: image!)
                    : Icon(
                        icon,
                        color: iconColor,
                        size: iconSize,
                      )),
          ),
        ),
      ),
    );
  }
}
