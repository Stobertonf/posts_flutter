import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/widgets/bottom_navigation/bottom_navigation_widget.dart';
import 'package:posts_flutter/shared/widgets/bottom_navigation/item_bottom_navigation_widget.dart';

class PageConfig {
  final String id;
  final String? label;
  final IconData icon;
  final Widget Function(BuildContext context) builder;
  PageConfig({
    required this.id,
    this.label,
    required this.icon,
    required this.builder,
  });
}

class HomePage extends StatefulWidget {
  final List<PageConfig> pages;
  const HomePage({
    Key? key,
    required this.pages,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Widget currentPage;

  @override
  void initState() {
    currentPage = widget.pages.first.builder(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: currentPage,
        bottomNavigationBar: BottomNavigationWidget<String>(
            onSelected: (value) {
              final builder = widget.pages
                  .firstWhere((element) => element.id == value)
                  .builder;
              if (value == "/novo-post") {
                Navigator.push(context, MaterialPageRoute(builder: builder));
              } else {
                currentPage = builder(context);
                setState(() {});
              }
            },
            items: widget.pages
                .map(
                  (e) => ItemBottomNavigation(
                    id: e.id,
                    label: e.label,
                    icon: e.icon,
                  ),
                )
                .toList()),
      ),
    );
  }
}
