import 'package:exam_carlos/detail_pages/podcast_detail.dart';
import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcasts'),
      ),
      body: Column(
        children: [
          const PodcastCard(
            artista: 'Count Me Out',
            musica: 'Kendrick Lamar',
            imagenUrl:
                'https://media.pitchfork.com/photos/627c1023d3c744a67a846260/1:1/w_320,c_limit/Kendrick-Lamar-Mr-Morale-And-The-Big-Steppers.jpg',
          ),
          const SizedBox(height: 80.0),
          AudioProgressBar(),
          const SizedBox(height: 24.0),
          AudioControls()
        ],
      ),
    );
  }
}
