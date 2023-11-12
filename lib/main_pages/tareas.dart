import 'package:exam_carlos/detail_pages/tareas_detail.dart';
import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          TaskCard(
            nombre: 'Carlos Pinto',
            descripcion: 'Primer Avance Proyecto',
            fecha: '18 de noviembre de 2023',
          ),
          Divider(),
          TaskCard(
            nombre: 'Carlos Pinto',
            descripcion: 'Terminar Examen',
            fecha: '12 de noviembre de 2023',
          ),
          Divider(),
          TaskCard(
            nombre: 'Carlos Pinto',
            descripcion: 'Segundo Acavance Proyecto',
            fecha: '25 de noviembre de 2023',
          ),
        ],
      ),
    );
  }
}
