import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;

  const TaskCard({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.date_range, color: Colors.grey),
                    const SizedBox(width: .0),
                    Text(
                      fecha,
                      style: const TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 2.0),
                    const Icon(Icons.link, color: Colors.blue),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              descripcion,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
