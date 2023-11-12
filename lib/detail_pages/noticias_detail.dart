import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String date;
  final String content;
  final String url;

  const NewsCard(
      {required this.title,
      required this.date,
      required this.content,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    content,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Image.network(
              url,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class News extends StatelessWidget {
  final List<_News> noticias;

  const News({Key? key, required this.noticias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network(noticias[index].imagenUrl),
                Text(noticias[index].titulo),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(noticias[index].descripcion),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _News {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  _News({
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });
}
