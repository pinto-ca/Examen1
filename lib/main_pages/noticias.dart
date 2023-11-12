import 'package:exam_carlos/detail_pages/noticias_detail.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          NewsCard(
            title: 'Proyectos de Vinculacion',
            date: '24 de noviembre de 2023',
            content:
                'Nuevos proyectos de vinculación estarán disponibles a partir del 24 de noviembre del presente año.',
            url:
                'https://vinculacion.unibe.edu.ec/wp-content/uploads/2019/09/proyectos.jpg',
          ),
          Divider(),
          NewsCard(
            title: 'Feria de Empleo',
            date: '26 de noviembre de 2023',
            content:
                'Ven a nuestra feria de empleo que inciará el lunes 26 de noviembre.',
            url:
                'https://cdn-3.expansion.mx/dims4/default/5ae959c/2147483647/strip/true/crop/1256x835+0+0/resize/1200x798!/format/webp/quality/60/?url=https%3A%2F%2Fcdn-3.expansion.mx%2F36%2Fba%2F6f0c41c848928516fec5320b80de%2Fistock-898373344.jpg',
          ),
        ],
      ),
    );
  }
}
