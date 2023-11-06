// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetcherHash() => r'eef2807145b96b87b9b4d81fe78e9f12e76f3ed8';

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

abstract class _$Fetcher extends BuildlessAutoDisposeAsyncNotifier<String> {
  late final String url;

  Future<String> build(
    String url,
  );
}

/// See also [Fetcher].
@ProviderFor(Fetcher)
const fetcherProvider = FetcherFamily();

/// See also [Fetcher].
class FetcherFamily extends Family<AsyncValue<String>> {
  /// See also [Fetcher].
  const FetcherFamily();

  /// See also [Fetcher].
  FetcherProvider call(
    String url,
  ) {
    return FetcherProvider(
      url,
    );
  }

  @override
  FetcherProvider getProviderOverride(
    covariant FetcherProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'fetcherProvider';
}

/// See also [Fetcher].
class FetcherProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Fetcher, String> {
  /// See also [Fetcher].
  FetcherProvider(
    String url,
  ) : this._internal(
          () => Fetcher()..url = url,
          from: fetcherProvider,
          name: r'fetcherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetcherHash,
          dependencies: FetcherFamily._dependencies,
          allTransitiveDependencies: FetcherFamily._allTransitiveDependencies,
          url: url,
        );

  FetcherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Future<String> runNotifierBuild(
    covariant Fetcher notifier,
  ) {
    return notifier.build(
      url,
    );
  }

  @override
  Override overrideWith(Fetcher Function() create) {
    return ProviderOverride(
      origin: this,
      override: FetcherProvider._internal(
        () => create()..url = url,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Fetcher, String> createElement() {
    return _FetcherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetcherProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetcherRef on AutoDisposeAsyncNotifierProviderRef<String> {
  /// The parameter `url` of this provider.
  String get url;
}

class _FetcherProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Fetcher, String>
    with FetcherRef {
  _FetcherProviderElement(super.provider);

  @override
  String get url => (origin as FetcherProvider).url;
}

String _$fetcherTimeoutWrapperHash() =>
    r'33d639f302967e5e7cd2736692f5ebfc373eaf50';

abstract class _$FetcherTimeoutWrapper extends BuildlessAutoDisposeNotifier<
    ({bool timeout, bool isLoading, Object? error, String? value})> {
  late final String url;

  ({bool timeout, bool isLoading, Object? error, String? value}) build(
    String url,
  );
}

/// See also [FetcherTimeoutWrapper].
@ProviderFor(FetcherTimeoutWrapper)
const fetcherTimeoutWrapperProvider = FetcherTimeoutWrapperFamily();

/// See also [FetcherTimeoutWrapper].
class FetcherTimeoutWrapperFamily extends Family<
    ({bool timeout, bool isLoading, Object? error, String? value})> {
  /// See also [FetcherTimeoutWrapper].
  const FetcherTimeoutWrapperFamily();

  /// See also [FetcherTimeoutWrapper].
  FetcherTimeoutWrapperProvider call(
    String url,
  ) {
    return FetcherTimeoutWrapperProvider(
      url,
    );
  }

  @override
  FetcherTimeoutWrapperProvider getProviderOverride(
    covariant FetcherTimeoutWrapperProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'fetcherTimeoutWrapperProvider';
}

/// See also [FetcherTimeoutWrapper].
class FetcherTimeoutWrapperProvider extends AutoDisposeNotifierProviderImpl<
    FetcherTimeoutWrapper,
    ({bool timeout, bool isLoading, Object? error, String? value})> {
  /// See also [FetcherTimeoutWrapper].
  FetcherTimeoutWrapperProvider(
    String url,
  ) : this._internal(
          () => FetcherTimeoutWrapper()..url = url,
          from: fetcherTimeoutWrapperProvider,
          name: r'fetcherTimeoutWrapperProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetcherTimeoutWrapperHash,
          dependencies: FetcherTimeoutWrapperFamily._dependencies,
          allTransitiveDependencies:
              FetcherTimeoutWrapperFamily._allTransitiveDependencies,
          url: url,
        );

  FetcherTimeoutWrapperProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  ({bool timeout, bool isLoading, Object? error, String? value})
      runNotifierBuild(
    covariant FetcherTimeoutWrapper notifier,
  ) {
    return notifier.build(
      url,
    );
  }

  @override
  Override overrideWith(FetcherTimeoutWrapper Function() create) {
    return ProviderOverride(
      origin: this,
      override: FetcherTimeoutWrapperProvider._internal(
        () => create()..url = url,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FetcherTimeoutWrapper,
          ({bool timeout, bool isLoading, Object? error, String? value})>
      createElement() {
    return _FetcherTimeoutWrapperProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetcherTimeoutWrapperProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetcherTimeoutWrapperRef on AutoDisposeNotifierProviderRef<
    ({bool timeout, bool isLoading, Object? error, String? value})> {
  /// The parameter `url` of this provider.
  String get url;
}

class _FetcherTimeoutWrapperProviderElement
    extends AutoDisposeNotifierProviderElement<FetcherTimeoutWrapper,
        ({bool timeout, bool isLoading, Object? error, String? value})>
    with FetcherTimeoutWrapperRef {
  _FetcherTimeoutWrapperProviderElement(super.provider);

  @override
  String get url => (origin as FetcherTimeoutWrapperProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
