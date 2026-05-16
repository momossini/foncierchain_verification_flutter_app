import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/parcel_public.dart';
import '../../data/repositories/parcel_repository.dart';

part 'search_providers.g.dart';

enum SearchMode { uid, address }

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  ({SearchMode mode, String query}) build() {
    return (mode: SearchMode.uid, query: '');
  }

  void updateMode(SearchMode mode) {
    state = (mode: mode, query: state.query);
  }

  void updateQuery(String query) {
    state = (mode: state.mode, query: query);
  }
}

@riverpod
Future<List<ParcelPublic>> searchResults(
  SearchResultsRef ref, {
  String? uid,
  String? address,
}) {
  final repository = ref.watch(parcelRepositoryProvider);

  if (uid != null && uid.isNotEmpty) {
    return repository.searchByParcelUid(uid);
  } else if (address != null && address.isNotEmpty) {
    return repository.searchByAddress(address);
  }

  return Future.value([]);
}
