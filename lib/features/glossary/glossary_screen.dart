import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class GlossaryItem {
  final String term;
  final String definition;
  final String category;

  GlossaryItem({required this.term, required this.definition, required this.category});
}

class GlossaryScreen extends StatefulWidget {
  const GlossaryScreen({super.key});

  @override
  State<GlossaryScreen> createState() => _GlossaryScreenState();
}

class _GlossaryScreenState extends State<GlossaryScreen> {
  final List<GlossaryItem> _allTerms = [
    GlossaryItem(
      term: 'Parcelle',
      definition: 'Portion de terrain d\'un seul tenant située dans une même commune, appartenant à un même propriétaire et faisant l\'objet d\'un numéro unique au cadastre.',
      category: 'Général',
    ),
    GlossaryItem(
      term: 'Mutation',
      definition: 'Tout changement de propriétaire d\'un bien immobilier, que ce soit par vente, héritage ou donation.',
      category: 'Opérations',
    ),
    GlossaryItem(
      term: 'Statut Actif',
      definition: 'Indique que la parcelle est officiellement enregistrée et que ses données sont à jour dans le registre numérique.',
      category: 'Statuts',
    ),
    GlossaryItem(
      term: 'En Revue',
      definition: 'Signifie que des modifications ou une vérification sont en cours sur cette parcelle par les services administratifs.',
      category: 'Statuts',
    ),
    GlossaryItem(
      term: 'UID (Identifiant Unique)',
      definition: 'Code alphanumérique unique permettant d\'identifier sans ambiguïté une parcelle sur tout le territoire.',
      category: 'Technique',
    ),
    GlossaryItem(
      term: 'Titre Foncier',
      definition: 'Document officiel garantissant le droit de propriété sur un terrain.',
      category: 'Documents',
    ),
  ];

  List<GlossaryItem> _filteredTerms = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredTerms = _allTerms;
  }

  void _filterTerms(String query) {
    setState(() {
      _filteredTerms = _allTerms
          .where((item) =>
              item.term.toLowerCase().contains(query.toLowerCase()) ||
              item.definition.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glossaire'),
      ),
      body: Column(
        children: [
          // Barre de recherche
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterTerms,
              decoration: InputDecoration(
                hintText: 'Rechercher un terme...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _filterTerms('');
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          // Liste des termes
          Expanded(
            child: _filteredTerms.isEmpty
                ? const Center(child: Text('Aucun terme trouvé.'))
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: _filteredTerms.length,
                    itemBuilder: (context, index) {
                      final item = _filteredTerms[index];
                      return _GlossaryCard(item: item);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class _GlossaryCard extends StatelessWidget {
  final GlossaryItem item;

  const _GlossaryCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: ExpansionTile(
        title: Text(
          item.term,
          style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary),
        ),
        subtitle: Text(
          item.category,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
        leading: const Icon(Icons.info_outline, color: AppColors.primary),
        childrenPadding: const EdgeInsets.all(16),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        shape: const RoundedRectangleBorder(side: BorderSide.none),
        children: [
          Text(
            item.definition,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
