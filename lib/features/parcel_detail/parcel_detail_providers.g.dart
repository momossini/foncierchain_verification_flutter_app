// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$parcelDetailHash() => r'ee62f049c3b33bd11ad93ef5620da82b99e7426b';

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

/// See also [parcelDetail].
@ProviderFor(parcelDetail)
const parcelDetailProvider = ParcelDetailFamily();

/// See also [parcelDetail].
class ParcelDetailFamily extends Family<AsyncValue<ParcelPublic>> {
  /// See also [parcelDetail].
  const ParcelDetailFamily();

  /// See also [parcelDetail].
  ParcelDetailProvider call(String id) {
    return ParcelDetailProvider(id);
  }

  @override
  ParcelDetailProvider getProviderOverride(
    covariant ParcelDetailProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'parcelDetailProvider';
}

/// See also [parcelDetail].
class ParcelDetailProvider extends AutoDisposeFutureProvider<ParcelPublic> {
  /// See also [parcelDetail].
  ParcelDetailProvider(String id)
    : this._internal(
        (ref) => parcelDetail(ref as ParcelDetailRef, id),
        from: parcelDetailProvider,
        name: r'parcelDetailProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$parcelDetailHash,
        dependencies: ParcelDetailFamily._dependencies,
        allTransitiveDependencies:
            ParcelDetailFamily._allTransitiveDependencies,
        id: id,
      );

  ParcelDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<ParcelPublic> Function(ParcelDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ParcelDetailProvider._internal(
        (ref) => create(ref as ParcelDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ParcelPublic> createElement() {
    return _ParcelDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ParcelDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ParcelDetailRef on AutoDisposeFutureProviderRef<ParcelPublic> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ParcelDetailProviderElement
    extends AutoDisposeFutureProviderElement<ParcelPublic>
    with ParcelDetailRef {
  _ParcelDetailProviderElement(super.provider);

  @override
  String get id => (origin as ParcelDetailProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
