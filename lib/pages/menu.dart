import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text('Menu', style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text('Noticias'),
              onTap: () {
                //pantalla de noticias
              },
            ),
            ListTile(
              leading: const Icon(Icons.currency_exchange),
              title: const Text('Cambio de Monedas'),
              onTap: () {
                //pantalla de cambio de monedas
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Lista de tareas'),
              onTap: () {
                //pantalla de lista de tareas
              },
            ),
            ListTile(
              leading: const Icon(Icons.podcasts),
              title: const Text('Podcast'),
              onTap: () {
                //pantalla de podcast
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Menu Principal'),
      ),
    );
  }
}
