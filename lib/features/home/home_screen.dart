import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../search/search_providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchQueryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('FoncierChain'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.search_rounded,
              size: 80,
              color: AppColors.primary,
            ),
            const SizedBox(height: 24),
            const Text(
              'Vérification Foncière',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Recherchez une parcelle dans le registre public par son identifiant unique ou son adresse.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.darkGrey,
              ),
            ),
            const SizedBox(height: 40),

            // Sélecteur de mode de recherche
            SegmentedButton<SearchMode>(
              segments: const [
                ButtonSegment(
                  value: SearchMode.uid,
                  label: Text('Identifiant'),
                  icon: Icon(Icons.pin),
                ),
                ButtonSegment(
                  value: SearchMode.address,
                  label: Text('Adresse'),
                  icon: Icon(Icons.location_on),
                ),
              ],
              selected: {searchState.mode},
              onSelectionChanged: (newSelection) {
                ref.read(searchQueryProvider.notifier).updateMode(newSelection.first);
              },
            ),
            const SizedBox(height: 24),

            // Champ de recherche
            TextField(
              decoration: InputDecoration(
                hintText: searchState.mode == SearchMode.uid
                    ? 'Ex: PAR-123456'
                    : 'Ex: 123 rue de la Paix',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).updateQuery(value);
              },
              onSubmitted: (_) => _performSearch(context, ref, searchState),
            ),
            const SizedBox(height: 24),

            // Bouton de recherche
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: searchState.query.isEmpty
                ? null
                : () => _performSearch(context, ref, searchState),
              child: const Text(
                'RECHERCHER',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),

            // Liens rapides
            Row(
              children: [
                Expanded(
                  child: _QuickLinkCard(
                    title: 'Glossaire',
                    icon: Icons.book_rounded,
                    onTap: () => context.push('/glossary'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _QuickLinkCard(
                    title: 'Support',
                    icon: Icons.help_outline_rounded,
                    onTap: () => context.push('/support'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _performSearch(BuildContext context, WidgetRef ref, ({SearchMode mode, String query}) searchState) {
    if (searchState.query.isEmpty) return;

    // Pour le moment, on navigue juste vers l'écran des résultats.
    // La recherche réelle sera effectuée par le ResultsScreen en utilisant le provider.
    context.push('/search-results');
  }
}

class _QuickLinkCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _QuickLinkCard({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.lightYellow.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppColors.yellow.withOpacity(0.5)),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Icon(icon, color: AppColors.brown),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.brown,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
