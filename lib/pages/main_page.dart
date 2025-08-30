import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: const Text(
          "Bienveido a la App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
