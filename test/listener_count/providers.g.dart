// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$masterHash() => r'62f0e7489c9b769436adc8fb79fa4afabd823a78';

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

abstract class _$Master extends BuildlessNotifier<Object> {
  late final Country country;

  Object build(
    Country country,
  );
}

/// 01 - Master.
///
/// Copied from [Master].
@ProviderFor(Master)
const masterProvider = MasterFamily();

/// 01 - Master.
///
/// Copied from [Master].
class MasterFamily extends Family<Object> {
  /// 01 - Master.
  ///
  /// Copied from [Master].
  const MasterFamily();

  /// 01 - Master.
  ///
  /// Copied from [Master].
  MasterProvider call(
    Country country,
  ) {
    return MasterProvider(
      country,
    );
  }

  @override
  MasterProvider getProviderOverride(
    covariant MasterProvider provider,
  ) {
    return call(
      provider.country,
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
  String? get name => r'masterProvider';
}

/// 01 - Master.
///
/// Copied from [Master].
class MasterProvider extends NotifierProviderImpl<Master, Object> {
  /// 01 - Master.
  ///
  /// Copied from [Master].
  MasterProvider(
    Country country,
  ) : this._internal(
          () => Master()..country = country,
          from: masterProvider,
          name: r'masterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$masterHash,
          dependencies: MasterFamily._dependencies,
          allTransitiveDependencies: MasterFamily._allTransitiveDependencies,
          country: country,
        );

  MasterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.country,
  }) : super.internal();

  final Country country;

  @override
  Object runNotifierBuild(
    covariant Master notifier,
  ) {
    return notifier.build(
      country,
    );
  }

  @override
  Override overrideWith(Master Function() create) {
    return ProviderOverride(
      origin: this,
      override: MasterProvider._internal(
        () => create()..country = country,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        country: country,
      ),
    );
  }

  @override
  NotifierProviderElement<Master, Object> createElement() {
    return _MasterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MasterProvider && other.country == country;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, country.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MasterRef on NotifierProviderRef<Object> {
  /// The parameter `country` of this provider.
  Country get country;
}

class _MasterProviderElement extends NotifierProviderElement<Master, Object>
    with MasterRef {
  _MasterProviderElement(super.provider);

  @override
  Country get country => (origin as MasterProvider).country;
}

String _$slaveHash() => r'e2ae81479803de8b100ab4a042b920e7495f25ad';

abstract class _$Slave extends BuildlessNotifier<DateTime> {
  late final Country country;
  late final President president;

  DateTime build(
    Country country,
    President president,
  );
}

/// 02 - Slave.
///
/// Copied from [Slave].
@ProviderFor(Slave)
const slaveProvider = SlaveFamily();

/// 02 - Slave.
///
/// Copied from [Slave].
class SlaveFamily extends Family<DateTime> {
  /// 02 - Slave.
  ///
  /// Copied from [Slave].
  const SlaveFamily();

  /// 02 - Slave.
  ///
  /// Copied from [Slave].
  SlaveProvider call(
    Country country,
    President president,
  ) {
    return SlaveProvider(
      country,
      president,
    );
  }

  @override
  SlaveProvider getProviderOverride(
    covariant SlaveProvider provider,
  ) {
    return call(
      provider.country,
      provider.president,
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
  String? get name => r'slaveProvider';
}

/// 02 - Slave.
///
/// Copied from [Slave].
class SlaveProvider extends NotifierProviderImpl<Slave, DateTime> {
  /// 02 - Slave.
  ///
  /// Copied from [Slave].
  SlaveProvider(
    Country country,
    President president,
  ) : this._internal(
          () => Slave()
            ..country = country
            ..president = president,
          from: slaveProvider,
          name: r'slaveProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$slaveHash,
          dependencies: SlaveFamily._dependencies,
          allTransitiveDependencies: SlaveFamily._allTransitiveDependencies,
          country: country,
          president: president,
        );

  SlaveProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.country,
    required this.president,
  }) : super.internal();

  final Country country;
  final President president;

  @override
  DateTime runNotifierBuild(
    covariant Slave notifier,
  ) {
    return notifier.build(
      country,
      president,
    );
  }

  @override
  Override overrideWith(Slave Function() create) {
    return ProviderOverride(
      origin: this,
      override: SlaveProvider._internal(
        () => create()
          ..country = country
          ..president = president,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        country: country,
        president: president,
      ),
    );
  }

  @override
  NotifierProviderElement<Slave, DateTime> createElement() {
    return _SlaveProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SlaveProvider &&
        other.country == country &&
        other.president == president;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, country.hashCode);
    hash = _SystemHash.combine(hash, president.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SlaveRef on NotifierProviderRef<DateTime> {
  /// The parameter `country` of this provider.
  Country get country;

  /// The parameter `president` of this provider.
  President get president;
}

class _SlaveProviderElement extends NotifierProviderElement<Slave, DateTime>
    with SlaveRef {
  _SlaveProviderElement(super.provider);

  @override
  Country get country => (origin as SlaveProvider).country;
  @override
  President get president => (origin as SlaveProvider).president;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
