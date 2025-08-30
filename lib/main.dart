import 'package:flutter/material.dart';
import 'pages/first_page.dart';
import 'pages/second_page.dart';
import 'pages/main_page.dart';
import 'layout/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Global",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const MainLayout(child: MainPage()),
        "/first": (context) => const MainLayout(child: FirstPage()),
        "/second": (context) => const MainLayout(child: SecondPage()),
      },
    );
  }
}
