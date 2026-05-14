import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'search_providers.dart';
import 'widgets/parcel_result_card.dart';
import '../../core/theme/app_colors.dart';

class SearchResultsScreen extends ConsumerWidget {
  final String? uid;
  final String? address;

  const SearchResultsScreen({super.key, this.uid, this.address});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResultsAsync = ref.watch(searchResultsProvider(uid: uid, address: address));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Résultats'),
      ),
      body: searchResultsAsync.when(
        data: (parcels) {
          if (parcels.isEmpty) {
            return const _NoResultView();
          }
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: parcels.length,
            itemBuilder: (context, index) {
              return ParcelResultCard(parcel: parcels[index]);
            },
          );
        },
        loading: () => const _LoadingView(),
        error: (error, stack) => _ErrorView(
          message: error.toString(),
          onRetry: () => ref.refresh(searchResultsProvider(uid: uid, address: address)),
        ),
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('Recherche en cours...'),
        ],
      ),
    );
  }
}

class _NoResultView extends StatelessWidget {
  const _NoResultView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off_rounded, size: 80, color: Colors.grey.shade400),
          const SizedBox(height: 16),
          const Text(
            'Aucune parcelle trouvée',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Essayez avec un autre identifiant ou une autre adresse.',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary),
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Retour à l\'accueil'),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline_rounded, size: 80, color: AppColors.error),
            const SizedBox(height: 16),
            const Text(
              'Une erreur est survenue',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.textSecondary),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('RÉESSAYER'),
            ),
          ],
        ),
      ),
    );
  }
}
