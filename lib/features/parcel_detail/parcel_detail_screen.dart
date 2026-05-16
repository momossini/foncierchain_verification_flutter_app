import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'parcel_detail_providers.dart';
import 'widgets/history_timeline.dart';
import '../../core/theme/app_colors.dart';
import '../../shared/widgets/loading_view.dart';
import '../../shared/widgets/error_view.dart';

class ParcelDetailScreen extends ConsumerWidget {
  final String id;
  const ParcelDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parcelAsync = ref.watch(parcelDetailProvider(id));

    return Scaffold(
      appBar: AppBar(title: const Text('Détail de la parcelle')),
      body: parcelAsync.when(
        data: (parcel) => SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Badge de statut
              _StatusSection(status: parcel.status),
              const SizedBox(height: 24),

              // Infos principales
              _InfoTile(
                label: 'Identifiant Unique',
                value: parcel.parcelUid,
                icon: Icons.pin,
              ),
              const Divider(height: 32),
              _InfoTile(
                label: 'Adresse',
                value: parcel.address,
                icon: Icons.location_on,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _InfoTile(
                      label: 'Ville',
                      value: parcel.city,
                      icon: Icons.location_city,
                    ),
                  ),
                  Expanded(
                    child: _InfoTile(
                      label: 'District',
                      value: parcel.district,
                      icon: Icons.map,
                    ),
                  ),
                ],
              ),
              const Divider(height: 32),
              _InfoTile(
                label: 'Propriétaire Actuel',
                value: parcel.currentOwnerName ?? 'Non renseigné',
                icon: Icons.person,
              ),

              const SizedBox(height: 40),

              // Historique
              const Text(
                'Historique Simplifié',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 24),
              SimplifiedHistoryTimeline(history: parcel.history),

              const SizedBox(height: 40),

              // Aide / Preuve numérique
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.navyBlue.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.navyBlue.withOpacity(0.1),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.verified_user_rounded, color: AppColors.primary),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Ces données sont issues du registre public certifié FoncierChain.',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        loading: () => const AppLoadingView(),
        error: (error, stack) => AppErrorView(
          message: error.toString(),
          onRetry: () => ref.refresh(parcelDetailProvider(id)),
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _InfoTile({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.textSecondary, size: 20),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusSection extends StatelessWidget {
  final String status;
  const _StatusSection({required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (status.toLowerCase()) {
      case 'actif':
      case 'active':
        color = Colors.green;
        break;
      case 'en revue':
      case 'in review':
        color = Colors.orange;
        break;
      default:
        color = Colors.grey;
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'STATUT ACTUEL',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            status.toUpperCase(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
