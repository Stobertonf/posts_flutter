import 'package:flutter/material.dart';

abstract class AppColors {
  Color get azul1;
  Color get azul2;
  Color get cinza;
  Color get preto;
  Color get branco;
  Color get vermelho;
  MaterialColor get neutral;
}

class AppColorsDefault implements AppColors {
  @override
  Color get azul1 => const Color(0xFF0088CC);

  @override
  Color get azul2 => const Color(0xFF179CDE);
  @override
  Color get cinza => const Color(0xFF8C8C8C);
  @override
  Color get preto => const Color(0xFF333333);
  @override
  Color get branco => const Color(0xFFFFFFFF);

  @override
  Color get vermelho => const Color(0xFFFF0000);

  @override
  MaterialColor get neutral => const MaterialColor(0xFFFFFFFF, {
        50: Color(0xFFFAFAFA),
        100: Color(0xFFF5F5F5),
        200: Color(0xFFE5E5E5),
        300: Color(0xFFD4D4D4),
        400: Color(0xFFA3A3A3),
        500: Color(0xFF737373),
        600: Color(0xFF525252),
        700: Color(0xFF404040),
        800: Color(0xFF262626),
        900: Color(0xFF171717),
      });
}
