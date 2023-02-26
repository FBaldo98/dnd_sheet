// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchEquipmentHash() => r'0ed17f567d3f1e2af1e390a1a906471ebee3bbcc';

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

typedef SearchEquipmentRef = AutoDisposeFutureProviderRef<List<SearchResult>>;

/// See also [searchEquipment].
@ProviderFor(searchEquipment)
const searchEquipmentProvider = SearchEquipmentFamily();

/// See also [searchEquipment].
class SearchEquipmentFamily extends Family<AsyncValue<List<SearchResult>>> {
  /// See also [searchEquipment].
  const SearchEquipmentFamily();

  /// See also [searchEquipment].
  SearchEquipmentProvider call({
    required String search,
  }) {
    return SearchEquipmentProvider(
      search: search,
    );
  }

  @override
  SearchEquipmentProvider getProviderOverride(
    covariant SearchEquipmentProvider provider,
  ) {
    return call(
      search: provider.search,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchEquipmentProvider';
}

/// See also [searchEquipment].
class SearchEquipmentProvider
    extends AutoDisposeFutureProvider<List<SearchResult>> {
  /// See also [searchEquipment].
  SearchEquipmentProvider({
    required this.search,
  }) : super.internal(
          (ref) => searchEquipment(
            ref,
            search: search,
          ),
          from: searchEquipmentProvider,
          name: r'searchEquipmentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchEquipmentHash,
          dependencies: SearchEquipmentFamily._dependencies,
          allTransitiveDependencies:
              SearchEquipmentFamily._allTransitiveDependencies,
        );

  final String search;

  @override
  bool operator ==(Object other) {
    return other is SearchEquipmentProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
