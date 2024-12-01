// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_remote_datasource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailDatasourceHash() => r'416c9946976391a4b90666e71e96bfddec107a46';

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

/// See also [detailDatasource].
@ProviderFor(detailDatasource)
const detailDatasourceProvider = DetailDatasourceFamily();

/// See also [detailDatasource].
class DetailDatasourceFamily extends Family<DetailDataSource> {
  /// See also [detailDatasource].
  const DetailDatasourceFamily();

  /// See also [detailDatasource].
  DetailDatasourceProvider call(
    ApiService apiService,
  ) {
    return DetailDatasourceProvider(
      apiService,
    );
  }

  @override
  DetailDatasourceProvider getProviderOverride(
    covariant DetailDatasourceProvider provider,
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
  String? get name => r'detailDatasourceProvider';
}

/// See also [detailDatasource].
class DetailDatasourceProvider extends AutoDisposeProvider<DetailDataSource> {
  /// See also [detailDatasource].
  DetailDatasourceProvider(
    ApiService apiService,
  ) : this._internal(
          (ref) => detailDatasource(
            ref as DetailDatasourceRef,
            apiService,
          ),
          from: detailDatasourceProvider,
          name: r'detailDatasourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailDatasourceHash,
          dependencies: DetailDatasourceFamily._dependencies,
          allTransitiveDependencies:
              DetailDatasourceFamily._allTransitiveDependencies,
          apiService: apiService,
        );

  DetailDatasourceProvider._internal(
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
    DetailDataSource Function(DetailDatasourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DetailDatasourceProvider._internal(
        (ref) => create(ref as DetailDatasourceRef),
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
  AutoDisposeProviderElement<DetailDataSource> createElement() {
    return _DetailDatasourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailDatasourceProvider && other.apiService == apiService;
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
mixin DetailDatasourceRef on AutoDisposeProviderRef<DetailDataSource> {
  /// The parameter `apiService` of this provider.
  ApiService get apiService;
}

class _DetailDatasourceProviderElement
    extends AutoDisposeProviderElement<DetailDataSource>
    with DetailDatasourceRef {
  _DetailDatasourceProviderElement(super.provider);

  @override
  ApiService get apiService => (origin as DetailDatasourceProvider).apiService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
