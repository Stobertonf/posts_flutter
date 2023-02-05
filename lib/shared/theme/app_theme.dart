import 'package:posts_flutter/shared/theme/colors.dart';
import 'package:posts_flutter/shared/theme/text_styles.dart';

abstract class AppTheme {
  AppTheme();
  static AppColors get colors => AppColorsDefault();
  static AppTextStyles get textStyles => AppTextStylesDefault();
}
