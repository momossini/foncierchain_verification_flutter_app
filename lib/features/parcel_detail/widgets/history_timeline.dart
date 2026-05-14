import 'package:flutter/material.dart';
import '../../../data/models/parcel_history_public.dart';
import '../../../core/theme/app_colors.dart';

class SimplifiedHistoryTimeline extends StatelessWidget {
  final List<ParcelHistoryPublic> history;

  const SimplifiedHistoryTimeline({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    if (history.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Aucun historique disponible pour cette parcelle.',
          style: TextStyle(fontStyle: FontStyle.italic, color: AppColors.textSecondary),
        ),
      );
    }

    // Trier l'historique par date décroissante (plus récent en haut)
    final sortedHistory = List<ParcelHistoryPublic>.from(history)
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return Column(
      children: List.generate(sortedHistory.length, (index) {
        final item = sortedHistory[index];
        final isLast = index == sortedHistory.length - 1;

        return IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Colonne Timeline (cercle et ligne)
              Column(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  if (!isLast)
                    Expanded(
                      child: Container(
                        width: 2,
                        color: AppColors.primary.withOpacity(0.3),
                      ),
                    ),
                ],
              ),
              const SizedBox(width: 16),
              // Colonne Contenu
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _formatDate(item.createdAt),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.actionType.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      if (item.details != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          item.details!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                      if (item.previousOwner != null || item.newOwner != null) ...[
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (item.previousOwner != null)
                                Text(
                                  'Ancien : ${item.previousOwner}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              if (item.newOwner != null)
                                Text(
                                  'Nouveau : ${item.newOwner}',
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  String _formatDate(DateTime date) {
    // Format simple sans dépendance intl pour le moment
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}
