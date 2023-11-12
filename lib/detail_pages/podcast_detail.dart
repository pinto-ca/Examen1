import 'package:flutter/material.dart';

class PodcastCard extends StatelessWidget {
  final String artista;
  final String musica;
  final String imagenUrl;

  const PodcastCard({
    required this.artista,
    required this.musica,
    required this.imagenUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(imagenUrl),
                ),
                const SizedBox(width: 32.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artista,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      musica,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AudioControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.shuffle_on_outlined),
            onPressed: () {},
            iconSize: 25.0,
          ),
          IconButton(
            icon: const Icon(Icons.skip_previous),
            onPressed: () {},
            iconSize: 40.0,
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: () {},
            iconSize: 50.0,
          ),
          IconButton(
            icon: const Icon(Icons.fast_forward),
            onPressed: () {},
            iconSize: 40.0,
          ),
          IconButton(
            icon: const Icon(Icons.repeat_on),
            onPressed: () {},
            iconSize: 25.0,
          )
        ],
      ),
    );
  }
}

class AudioProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: const Column(
        children: [
          LinearProgressIndicator(
            value: 0.5,
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('1:45', style: TextStyle(fontSize: 14.0)),
              Text('3:45', style: TextStyle(fontSize: 14.0)),
            ],
          ),
        ],
      ),
    );
  }
}
