import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';
import 'package:posts_flutter/shared/widgets/text_widget.dart';

class ItemBottomNavigation<T> {
  final String? label;
  final IconData icon;
  final T id;
  ItemBottomNavigation({
    this.label,
    required this.icon,
    required this.id,
  });
}

class ItemBottomNavigationWidget<T> extends StatelessWidget {
  final ValueChanged<T> onSelected;
  final ItemBottomNavigation<T> item;
  final bool selected;
  const ItemBottomNavigationWidget({
    Key? key,
    required this.onSelected,
    required this.item,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: AppTheme.colors.neutral.shade100,
        child: InkWell(
          onTap: () {
            onSelected(item.id);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                item.icon,
                size: 20,
                color: selected ? AppTheme.colors.azul2 : AppTheme.colors.preto,
              ),
              const SizedBox(
                height: 5,
              ),
              TextWidget.bodyExtraSmallBold(
                item.label!,
                color: selected ? AppTheme.colors.azul2 : AppTheme.colors.preto,
              )
            ],
          ),
        ),
      ),
    );
  }
}
