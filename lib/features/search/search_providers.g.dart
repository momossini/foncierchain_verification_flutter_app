// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchResultsHash() => r'8b5e0bb0c85af358b53093839d42c9132b531650';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [searchResults].
@ProviderFor(searchResults)
const searchResultsProvider = SearchResultsFamily();

/// See also [searchResults].
class SearchResultsFamily extends Family<AsyncValue<List<ParcelPublic>>> {
  /// See also [searchResults].
  const SearchResultsFamily();

  /// See also [searchResults].
  SearchResultsProvider call({String? uid, String? address}) {
    return SearchResultsProvider(uid: uid, address: address);
  }

  @override
  SearchResultsProvider getProviderOverride(
    covariant SearchResultsProvider provider,
  ) {
    return call(uid: provider.uid, address: provider.address);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchResultsProvider';
}

/// See also [searchResults].
class SearchResultsProvider
    extends AutoDisposeFutureProvider<List<ParcelPublic>> {
  /// See also [searchResults].
  SearchResultsProvider({String? uid, String? address})
    : this._internal(
        (ref) =>
            searchResults(ref as SearchResultsRef, uid: uid, address: address),
        from: searchResultsProvider,
        name: r'searchResultsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$searchResultsHash,
        dependencies: SearchResultsFamily._dependencies,
        allTransitiveDependencies:
            SearchResultsFamily._allTransitiveDependencies,
        uid: uid,
        address: address,
      );

  SearchResultsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uid,
    required this.address,
  }) : super.internal();

  final String? uid;
  final String? address;

  @override
  Override overrideWith(
    FutureOr<List<ParcelPublic>> Function(SearchResultsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchResultsProvider._internal(
        (ref) => create(ref as SearchResultsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uid: uid,
        address: address,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ParcelPublic>> createElement() {
    return _SearchResultsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchResultsProvider &&
        other.uid == uid &&
        other.address == address;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchResultsRef on AutoDisposeFutureProviderRef<List<ParcelPublic>> {
  /// The parameter `uid` of this provider.
  String? get uid;

  /// The parameter `address` of this provider.
  String? get address;
}

class _SearchResultsProviderElement
    extends AutoDisposeFutureProviderElement<List<ParcelPublic>>
    with SearchResultsRef {
  _SearchResultsProviderElement(super.provider);

  @override
  String? get uid => (origin as SearchResultsProvider).uid;
  @override
  String? get address => (origin as SearchResultsProvider).address;
}

String _$searchQueryHash() => r'6fc5305c986bd71e9e1739e1848257e95ddca5cc';

/// See also [SearchQuery].
@ProviderFor(SearchQuery)
final searchQueryProvider =
    AutoDisposeNotifierProvider<
      SearchQuery,
      ({SearchMode mode, String query})
    >.internal(
      SearchQuery.new,
      name: r'searchQueryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$searchQueryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SearchQuery = AutoDisposeNotifier<({SearchMode mode, String query})>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
