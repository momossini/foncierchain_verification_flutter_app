import 'package:flutter/material.dart';

class ParcelDetailScreen extends StatelessWidget {
  final String id;
  const ParcelDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Détail Parcelle')),
      body: Center(child: Text('Détail de la parcelle $id Placeholder')),
    );
  }
}
