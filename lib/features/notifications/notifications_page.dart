import 'package:flutter/material.dart';
import 'package:posts_flutter/shared/widgets/text_widget.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextWidget.h8("Página de notificações"),
      ),
    );
  }
}
