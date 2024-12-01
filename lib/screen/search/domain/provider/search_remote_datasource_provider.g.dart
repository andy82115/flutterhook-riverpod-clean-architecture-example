// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_remote_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchDatasourceHash() => r'2efd76cbc66e4adb26ce7ca38d0c8b85bbb7096f';

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

/// See also [searchDatasource].
@ProviderFor(searchDatasource)
const searchDatasourceProvider = SearchDatasourceFamily();

/// See also [searchDatasource].
class SearchDatasourceFamily extends Family<SearchDataSource> {
  /// See also [searchDatasource].
  const SearchDatasourceFamily();

  /// See also [searchDatasource].
  SearchDatasourceProvider call(
    ApiService apiService,
  ) {
    return SearchDatasourceProvider(
      apiService,
    );
  }

  @override
  SearchDatasourceProvider getProviderOverride(
    covariant SearchDatasourceProvider provider,
  ) {
    return call(
      provider.apiService,
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
  String? get name => r'searchDatasourceProvider';
}

/// See also [searchDatasource].
class SearchDatasourceProvider extends AutoDisposeProvider<SearchDataSource> {
  /// See also [searchDatasource].
  SearchDatasourceProvider(
    ApiService apiService,
  ) : this._internal(
          (ref) => searchDatasource(
            ref as SearchDatasourceRef,
            apiService,
          ),
          from: searchDatasourceProvider,
          name: r'searchDatasourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchDatasourceHash,
          dependencies: SearchDatasourceFamily._dependencies,
          allTransitiveDependencies:
              SearchDatasourceFamily._allTransitiveDependencies,
          apiService: apiService,
        );

  SearchDatasourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.apiService,
  }) : super.internal();

  final ApiService apiService;

  @override
  Override overrideWith(
    SearchDataSource Function(SearchDatasourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchDatasourceProvider._internal(
        (ref) => create(ref as SearchDatasourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        apiService: apiService,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SearchDataSource> createElement() {
    return _SearchDatasourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchDatasourceProvider && other.apiService == apiService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, apiService.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchDatasourceRef on AutoDisposeProviderRef<SearchDataSource> {
  /// The parameter `apiService` of this provider.
  ApiService get apiService;
}

class _SearchDatasourceProviderElement
    extends AutoDisposeProviderElement<SearchDataSource>
    with SearchDatasourceRef {
  _SearchDatasourceProviderElement(super.provider);

  @override
  ApiService get apiService => (origin as SearchDatasourceProvider).apiService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
