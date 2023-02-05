import 'package:flutter/material.dart';
import 'item_bottom_navigation_widget.dart';
import 'package:posts_flutter/shared/theme/app_theme.dart';
import 'package:posts_flutter/shared/widgets/icon_button_widget.dart';

class BottomNavigationWidget<T> extends StatefulWidget {
  final List<ItemBottomNavigation<T>> items;
  final ValueChanged<T> onSelected;
  const BottomNavigationWidget({
    Key? key,
    required this.items,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() =>
      _BottomNavigationWidgetState<T>();
}

class _BottomNavigationWidgetState<T> extends State<BottomNavigationWidget<T>> {
  T? selected;

  void changeSelected(T value) {
    selected = value;
    if (selected != null) {
      widget.onSelected(selected!);
    }
    setState(() {});
  }

  @override
  void initState() {
    selected = widget.items.first.id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.maxFinite,
      color: AppTheme.colors.neutral.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...widget.items.map(
            (e) => e.label != null
                ? ItemBottomNavigationWidget(
                    selected: e.id == selected,
                    onSelected: changeSelected,
                    item: e)
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: IconButtonWidget.rounded(
                        icon: e.icon,
                        onPressed: () {
                          widget.onSelected(e.id);
                        }),
                  ),
          ),
        ],
      ),
    );
  }
}
