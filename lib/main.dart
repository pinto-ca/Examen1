import 'package:exam_carlos/main_pages/menu.dart';
import 'package:exam_carlos/main_pages/moneda.dart';
import 'package:exam_carlos/main_pages/noticias.dart';
import 'package:exam_carlos/main_pages/podcast.dart';
import 'package:exam_carlos/main_pages/tareas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App CEUTEC',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuPage(),
        '/news': (context) => const NewsPage(),
        '/currency': (context) => const CurrencyPage(),
        '/tasks': (context) => TaskListPage(),
        '/podcast': (context) => const PodcastPage(),
      },
    );
  }
}
