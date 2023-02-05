import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color? color;
  final TextAlign? align;
  const TextWidget._(this.text,
      {Key? key, required this.style, this.align, this.color})
      : super(key: key);

  factory TextWidget.h1(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h1,
      );

  factory TextWidget.h2(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h2,
        color: color,
      );
  factory TextWidget.h3(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h3,
        color: color,
      );
  factory TextWidget.h4(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h4,
        color: color,
      );
  factory TextWidget.h5(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h5,
        color: color,
      );
  factory TextWidget.h6(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h6,
        color: color,
      );
  factory TextWidget.h7(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h7,
        color: color,
      );
  factory TextWidget.h8(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h8,
        color: color,
      );
  factory TextWidget.h9(String text, {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        style: AppTheme.textStyles.h9,
        color: color,
      );
  factory TextWidget.bodyExtraLargeBold(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyExtraLargeBold,
      );
  factory TextWidget.bodyExtraLargeMedium(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyExtraLargeMedium,
      );
  factory TextWidget.bodyExtraLargeRegular(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyExtraLargeRegular,
      );
  factory TextWidget.bodyExtraLargeLight(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyExtraLargeLight,
      );
  factory TextWidget.bodyLargeBold(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyLargeBold,
      );
  factory TextWidget.bodyLargeMedium(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyLargeMedium,
      );
  factory TextWidget.bodyLargeRegular(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyLargeRegular,
      );
  factory TextWidget.bodyLargeLight(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyLargeLight,
      );

  factory TextWidget.bodyMediumBold(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyMediumBold,
      );
  factory TextWidget.bodyMediumMedium(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyMediumMedium,
      );
  factory TextWidget.bodyMediumRegular(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyMediumRegular,
      );
  factory TextWidget.bodyMediumLight(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyMediumLight,
      );

  factory TextWidget.bodySmallBold(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodySmallBold,
      );
  factory TextWidget.bodySmallMedium(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodySmallMedium,
      );
  factory TextWidget.bodySmallRegular(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodySmallRegular,
      );
  factory TextWidget.bodySmallLight(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodySmallLight,
      );

  factory TextWidget.bodyExtraSmallBold(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyExtraSmallBold,
      );
  factory TextWidget.bodyExtraSmallMedium(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyExtraSmallMedium,
      );
  factory TextWidget.bodyExtraSmallRegular(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodyExtraSmallRegular,
      );
  factory TextWidget.bodyExtraSmallLight(String text,
          {Color? color, TextAlign? align}) =>
      TextWidget._(
        text,
        align: align,
        color: color,
        style: AppTheme.textStyles.bodySmallLight,
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: style.copyWith(color: color),
    );
  }
}
