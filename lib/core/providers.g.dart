// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$masterHash() => r'3a0b977fe7bcefa748b07a330fdcee8416aa66f9';

/// 01 - Master.
///
/// Copied from [Master].
@ProviderFor(Master)
final masterProvider = NotifierProvider<Master, dynamic>.internal(
  Master.new,
  name: r'masterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$masterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Master = Notifier<dynamic>;
String _$slaveOneHash() => r'eb1ffff6755c2ecc82c2d434ed26fd160753b11e';

/// 02 - Slave one.
///
/// Copied from [SlaveOne].
@ProviderFor(SlaveOne)
final slaveOneProvider = NotifierProvider<SlaveOne, int>.internal(
  SlaveOne.new,
  name: r'slaveOneProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$slaveOneHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SlaveOne = Notifier<int>;
String _$slaveTwoHash() => r'805b56fde5524d69337f39bcb85cd14709953b87';

/// 03 - Slave two.
///
/// Copied from [SlaveTwo].
@ProviderFor(SlaveTwo)
final slaveTwoProvider = NotifierProvider<SlaveTwo, DateTime>.internal(
  SlaveTwo.new,
  name: r'slaveTwoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$slaveTwoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SlaveTwo = Notifier<DateTime>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
