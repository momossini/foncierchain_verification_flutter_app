import 'package:flutter/material.dart';
import 'error_view.dart';

class NetworkErrorView extends StatelessWidget {
  final VoidCallback? onRetry;

  const NetworkErrorView({super.key, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return AppErrorView(
      title: 'Erreur de connexion',
      message:
          'Impossible de joindre le serveur. Veuillez vérifier votre connexion internet.',
      icon: Icons.wifi_off_rounded,
      onRetry: onRetry,
    );
  }
}
