import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support et Aide'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Questions Fréquentes (FAQ)',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 24),

            _FaqItem(
              question: 'Ma parcelle est introuvable, que faire ?',
              answer: 'Vérifiez d\'abord l\'orthographe de l\'adresse ou l\'exactitude de l\'UID. Si le problème persiste, il est possible que la parcelle ne soit pas encore numérisée dans le registre national.',
            ),
            _FaqItem(
              question: 'Les informations semblent erronées ?',
              answer: 'Si vous constatez une erreur dans le statut ou le propriétaire affiché, veuillez contacter le service du cadastre de votre circonscription avec vos documents officiels.',
            ),
            _FaqItem(
              question: 'Comment obtenir un titre foncier ?',
              answer: 'Cette application est une interface de consultation. Pour toute démarche administrative, vous devez vous rendre sur le portail agent ou en préfecture.',
            ),

            const SizedBox(height: 40),

            const Text(
              'Besoin d\'une assistance directe ?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.lightYellow.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.yellow.withOpacity(0.5)),
              ),
              child: const Column(
                children: [
                  _ContactTile(
                    icon: Icons.email_outlined,
                    label: 'Email Support',
                    value: 'support@foncierchain.gouv',
                  ),
                  Divider(height: 32),
                  _ContactTile(
                    icon: Icons.phone_outlined,
                    label: 'Ligne Info Citoyen',
                    value: '+221 33 000 00 00',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              'À propos de FoncierChain',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'FoncierChain est une initiative nationale visant à sécuriser le patrimoine foncier grâce à la technologie blockchain. Cette application permet à chaque citoyen de consulter en toute transparence le registre public.',
              style: TextStyle(height: 1.5, color: AppColors.textSecondary),
            ),
            const SizedBox(height: 24),
            const Center(
              child: Text(
                'Version MVP 1.0.0',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FaqItem extends StatelessWidget {
  final String question;
  final String answer;

  const _FaqItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            answer,
            style: const TextStyle(height: 1.4, color: AppColors.textPrimary),
          ),
        ],
      ),
    );
  }
}

class _ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ContactTile({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: AppColors.brown),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.brown,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
