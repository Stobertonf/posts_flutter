import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posts_flutter/features/start/start_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Balta Gabuldev Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ).copyWith(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: StartPage(),
    );
  }
}
