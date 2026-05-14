import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String? message;
  const ErrorScreen({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Erreur')),
      body: Center(child: Text(message ?? 'Une erreur est survenue')),
    );
  }
}
