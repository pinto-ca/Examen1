import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('CEUTEC'),
              accountEmail: Text('infoapp@unitec.edu.hn'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fsap13-1.fna.fbcdn.net/v/t39.30808-6/325831615_1105022190174847_6553112405486633701_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeH_XXFdygyDd_wr0EGla-aIdpTLLtl8iRF2lMsu2XyJEdQrRg5_EvufSk1CBq_y7DGtGLoMvhaM5yTT5e6SjM6p&_nc_ohc=KUaP7W5bJ6AAX-q_syP&_nc_ht=scontent.fsap13-1.fna&oh=00_AfAVj1xrctQguxTX-UzdGWtqxE0XVhw1bBp0DNO5HRWJjA&oe=655629F5'),
              ),
            ),
            ListTile(
              title: Text('Noticias'),
              leading: Icon(Icons.newspaper),
              onTap: () {
                Navigator.pushNamed(context, '/news');
              },
            ),
            ListTile(
              title: Text('Cambio de monedas'),
              leading: Icon(Icons.currency_exchange),
              onTap: () {
                Navigator.pushNamed(context, '/currency');
              },
            ),
            ListTile(
              title: Text('Lista de tareas'),
              leading: Icon(Icons.task_sharp),
              onTap: () {
                Navigator.pushNamed(context, '/tasks');
              },
            ),
            ListTile(
              title: Text('Podcast'),
              leading: Icon(Icons.podcasts),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
    );
  }
}
