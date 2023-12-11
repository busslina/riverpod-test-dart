import 'package:riverpod/riverpod.dart';
import 'package:riverpod_test/unexpected_behavior/test_one.provider.dart';
import 'package:riverpod_test/unexpected_behavior/test_three.provider.dart';
import 'package:riverpod_test/unexpected_behavior/test_two.provider.dart';

main() async {
  final providerContainer = ProviderContainer();

  final one = await providerContainer.read(testOneProvider.future);
  final two = await providerContainer.read(testTwoProvider.future);
  final three = await providerContainer.read(testThreeProvider.future);

  print(one.runtimeType);
  print(two.runtimeType);
  print(three.runtimeType);
}
