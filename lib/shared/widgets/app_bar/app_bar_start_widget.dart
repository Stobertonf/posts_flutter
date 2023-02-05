import '../text_widget.dart';
import '../../theme/app_theme.dart';
import '../icon_button_widget.dart';
import 'package:flutter/material.dart';

class AppBarStartWidget extends StatelessWidget {
  const AppBarStartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppTheme.colors.azul1,
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(54))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtonWidget.circleLarge(
                  image: const AssetImage("assets/images/logo.png"),
                  onPressed: () {}),
              IconButtonWidget.circleLarge(
                  image: const NetworkImage("https://picsum.photos/100/100"),
                  onPressed: () {})
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          TextWidget.h8(
            "Olá, Lorem",
            color: AppTheme.colors.branco,
          ),
          const SizedBox(
            height: 16,
          ),
          TextWidget.bodyMediumRegular(
            "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
            color: AppTheme.colors.branco,
          )
        ],
      ),
    );
  }
}
