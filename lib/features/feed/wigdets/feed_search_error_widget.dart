import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';
import 'package:posts_flutter/shared/widgets/text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedSearchErrorWidget extends StatelessWidget {
  const FeedSearchErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                color: AppTheme.colors.azul2,
                borderRadius: BorderRadius.circular(200)),
            child: Center(
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: AppTheme.colors.branco,
                size: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextWidget.h8(
            "Não foi possivel encontrar o termo buscado.",
            align: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          TextWidget.bodyMediumRegular(
            "Por favor, verifique sua pesquisa e tente novamente para obter resultados. ",
            align: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
