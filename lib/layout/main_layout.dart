import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Global"),
        backgroundColor: Colors.black26,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Título del Drawer
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.black26,
              ),
              child: const Text(
                'Menú',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            // Opción Home
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
            ),
            // Opción Ver Listado
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Ver Listado'),
              onTap: () {
                Navigator.pushNamed(context, "/first");
              },
            ),
            // Opción Ver Segunda Página
            ListTile(
              leading: const Icon(Icons.pages),
              title: const Text('Ver Segunda Página'),
              onTap: () {
                Navigator.pushNamed(context, "/second");
              },
            ),
          ],
        ),
      ),
      body: child, // Aquí se muestra la página actual
    );
  }
}
